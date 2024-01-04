<?php

namespace Database\Seeders;

use App\Models\ComprasProductos;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ComprasProductosSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        ComprasProductos::factory()->count(20)->create();
    }
}
