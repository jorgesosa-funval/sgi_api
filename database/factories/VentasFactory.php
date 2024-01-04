<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\DB;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Ventas>
 */
class VentasFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $user = DB::table('users')->inRandomOrder()->first();
        return [
            'user_id' => $user->id,
            'totalArticulo' => $this->faker->numberBetween(1, 10),
            'totalVenta' => $this->faker->randomFloat(2, 10, 100),
            'metodoPago' => $this->faker->randomElement(['Efectivo', 'Tarjeta']),
            'fechaVenta' => $this->faker->date(),
            'totalNeto' => $this->faker->randomFloat(2, 10, 100),
            'noFactura' => $this->faker->uuid,
        ];
    }
}
