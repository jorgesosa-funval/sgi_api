<?php

namespace Database\Seeders;

use App\Models\VentasProductos;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class VentasProductosSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        VentasProductos::factory(20)->create();
    }
}
