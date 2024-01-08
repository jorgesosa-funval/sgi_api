<?php

namespace App\Http\Controllers;

use App\Models\ComprasProductos;
use Illuminate\Http\Request;

class ComprasProductosController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return ComprasProductos::all();
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
                $comprasProductos = new ComprasProductos();
                $comprasProductos->compra_id = $request->numeroCompra;
                $comprasProductos->producto_id = $request->productoUnid;
                $comprasProductos->costo = $request->costo;
                $comprasProductos->precio = $request->precioUnitario;
                $comprasProductos->cantidadProductos = $request->unidades;
                $comprasProductos->fechaCompra = $request->fechaCompra;
                $comprasProductos->total = $request->totalPagar;
                $comprasProductos->save();
                return "La compra se guardo correctamente";
        }
        return "Es nesesario ingresar un valor a todos los campos, para ser registrar una compra.";
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        if (ComprasProductos::find($id) == null) {
            return "No existe la Compra con el id N° " . $id;
        }
        return ComprasProductos::find($id);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(ComprasProductos $comprasProductos)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, ComprasProductos $comprasProductos)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(ComprasProductos $comprasProductos)
    {
        //
    }
}
