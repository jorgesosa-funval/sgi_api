<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Role;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
      $role = new RoleSeeder;
      $role->run();

      $user = new UsersSeeder;
      $user->run();

      $venta = new VentasSeeder;
      $venta->run();

      $compra = new ComprasSeeder;
      $compra->run();

      $producto = new ProductosSeeder;
      $producto->run();

      $ventaProducto = new VentasProductosSeeder;
      $ventaProducto->run();

      $compraProducto = new ComprasProductosSeeder;
      $compraProducto->run();
    }
}
