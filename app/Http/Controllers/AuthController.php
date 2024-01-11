<?php

// app/Http/Controllers/AuthController.php
namespace App\Http\Controllers;

use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Models\User;

class AuthController extends Controller

{

    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['login', 'register']]);
    }

    public function login(Request $request)
    {
        $credentials = $request->only(['email', 'password']);
        $emailexist = User::where('email', $credentials['email'])->exists();
        if (!$request->email || !$request->password) {
            $errors[] = 'Fallo la Autenticación';
            return response()->json([
                'mensaje' => implode(', ', $errors),
            ], 500);
        }
        if (!$token = auth()->attempt($credentials)) {
            if ($emailexist) {
                $errors[] = 'Contraseña incorrecta';
                return response()->json([
                    'mensaje' => implode(', ', $errors),
                ], 401);
            }
            if (!$emailexist) {
                $errors[] = 'Usuario no Registrado';
                return response()->json([
                    'mensaje' => implode(', ', $errors),
                ], 404);
            }
        }
        return response()->json([
            'token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth()->factory()->getTTL() * 60,
            'rol' => 1,
            'redirected' => '/dashboard/home'
        ]);
    }

    public function refresh()
    {
        return $this->respondWithToken(auth()->refresh());
    }

    public function logout()
    {
        auth()->logout();
        return response()->json(['message' => 'Successfully logged out']);
    }

    public function register(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'userName' => 'required|string',
            'email' => 'required|string|email|max:80|unique:users',
            'password' => 'required|string|min:4',
            'password_confirmed' => 'required|string|min:4',
            'role_id' => 'integer'
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors()->toJson(), 400);
        }

        $user = User::create(array_merge(
            $validator->validate(),
            ['role_id' => 1],
            ['password' => bcrypt($request->password)]
        ));

        return response()->json([
            'message' => 'Usuario creado exitosamente!',
            'user' => $user
        ], 201);
    }
}
