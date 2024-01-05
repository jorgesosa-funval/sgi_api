<?php

namespace Database\Seeders;

use App\Models\Compras;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ComprasSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Compras::factory()->count(20)->create();
    }
}
