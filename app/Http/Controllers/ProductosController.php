<?php

namespace App\Http\Controllers;

use App\Models\Productos;
use Illuminate\Http\Request;

class ProductosController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Productos::all();
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
        $productos = new Productos();
        $productos -> nombreProducto = $request -> nombreProducto;
        $productos -> stock = $request -> stock;
        $productos -> stockMinimo = $request -> stockMinimo;
        $productos -> marca = $request -> marca;
        $productos -> costo = $request -> costo;
        $productos -> precio = $request -> precio;
        $productos -> fecha = $request -> fecha;
        $productos -> img = $request -> img;
        $productos -> categoria = $request -> categoria;
        $productos -> save();
    }

    /**
     * Display the specified resource.
     */
    public function show(Productos $productos)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Productos $productos)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $nombreProducto)
    {
        $productos =  Productos::find($nombreProducto);
        $productos -> stock = $request -> stock;
        $productos -> stockMinimo = $request -> stockMinimo;
        $productos -> marca = $request -> marca;
        $productos -> costo = $request -> costo;
        $productos -> precio = $request -> precio;
        $productos -> fecha = $request -> fecha;
        $productos -> img = $request -> img;
        $productos -> categoria = $request -> categoria;
        $productos -> save();
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Productos $productos)
    {
        //
    }
}