<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\VentasProductos>
 */
class VentasProductosFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'venta_id' => $this->faker->numberBetween(1, 20),
            'producto_id' => $this->faker->numberBetween(1, 10),
            'precio' => $this->faker->numberBetween(10, 100),
            'costo' => $this->faker->numberBetween(5, 50),
            'cantidadVendida' => $this->faker->numberBetween(1, 10),
            'total' => $this->faker->numberBetween(50, 500),
            'fechaVenta' => $this->faker->date(),
        ];
    }
}
