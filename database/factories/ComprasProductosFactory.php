<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\ComprasProductos>
 */
class ComprasProductosFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'compra_id' => $this->faker->numberBetween(1, 20),
            'producto_id' => $this->faker->numberBetween(1, 10),
            'costo' => $this->faker->randomNumber(2),
            'precio' => $this->faker->randomNumber(2),
            'cantidadProductos' => $this->faker->randomNumber(2),
            'fechaCompra' => $this->faker->date,
            'total' => $this->faker->randomNumber(3),

        ];
    }
}
