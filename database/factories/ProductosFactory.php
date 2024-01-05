<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Productos>
 */
class ProductosFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'nombreProducto' => $this->faker->randomElement(['playera', 'pantalon', 'camisa', 'sudadera', 'gorra', 'tenis', 'bota', 'chaleco', 'zapatilla', 'falda']),
            'stock' => $this->faker->numberBetween(1, 50),
            'stockMinimo' => $this->faker->numberBetween(1, 10),
            'marca' => $this->faker->randomElement(['ADIDAS', 'NIKE', 'PUMA', 'PLEXUS']), 
            'costo' => $this->faker->numberBetween(10, 100),
            'precio' => $this->faker->numberBetween(50, 200),
            'fecha' => $this->faker->date,
            'img' => $this->faker->imageUrl(), 
            'categoria' => $this->faker->randomElement(['mujer', 'hombre', 'niño', 'niña', 'bebe']),
        ];
    }
}
