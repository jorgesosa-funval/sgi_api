<?php

namespace App\Http\Controllers;

use App\Models\Compras;
use Illuminate\Http\Request;

class ComprasController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Compras::all();
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        if ($request->cliente && $request->fechaCompra && $request->cantidadCompra && $request->totalPagado && $request->cantidadArticulos) {
                $compras = new Compras();
                $compras->user_id = $request->cliente;
                $compras->fechaCompra = $request->fechaCompra;
                $compras->antidadCompra = $request->cantidadCompra;
                $compras->totalPagado = $request->totalPagado;
                $compras->cantidadArticulos = $request->cantidadArticulos;
                $compras->save();
                return "La compra se guardo correctamente";
        }
        return "Es nesesario ingresar un valor a todos los campos, para ser registrar una compra.";
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        if (Compras::find($id) == null) {
            return "No existe el Compras con el id N° " . $id;
        }
        return Compras::find($id);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Compras $compras)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Compras $compras)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Compras $compras)
    {
        //
    }
}
