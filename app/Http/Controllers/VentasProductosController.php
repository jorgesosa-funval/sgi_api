<?php

namespace App\Http\Controllers;

use App\Models\VentasProductos;
use Illuminate\Http\Request;

class VentasProductosController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return VentasProductos::all();
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
        $ventasp = new VentasProductos();
        $ventasp -> venta_id = $request -> venta_id;
        $ventasp -> producto_id = $request -> producto_id;
        $ventasp -> precio = $request -> precio;
        $ventasp -> costo = $request -> costo;
        $ventasp -> cantidadVendida = $request -> cantidadVendida;
        $ventasp -> total = $request -> total;
        $ventasp -> fechaVenta = $request -> fechaVenta;
        $ventasp -> save();
    }

    /**
     * Display the specified resource.
     */
    public function show(VentasProductos $ventasProductos)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(VentasProductos $ventasProductos)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $venta_id)
    {
        $ventasp =  VentasProductos::find($venta_id);
        $ventasp -> producto_id = $request -> producto_id;
        $ventasp -> precio = $request -> precio;
        $ventasp -> costo = $request -> costo;
        $ventasp -> cantidadVendida = $request -> cantidadVendida;
        $ventasp -> total = $request -> total;
        $ventasp -> fechaVenta = $request -> fechaVenta;
        $ventasp -> save();
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($venta_id)
    {
        $ventasp = VentasProductos::find($venta_id);
        $ventasp ->delete();
    }
}