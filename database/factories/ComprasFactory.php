<?php

namespace Database\Factories;

use App\Models\Users;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Compras>
 */
class ComprasFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $users = Users::pluck('id')->toArray();

        return [
            'user_id' => $this->faker->randomElement($users),
            'noReferencia' => $this->faker->uuid,
            'fechaCompra' => $this->faker->date,
            'cantidadCompra' => $this->faker->numberBetween(1, 100),
            'totalPagado' => $this->faker->numberBetween(100, 1000),
            'cantidadArticulos' => $this->faker->numberBetween(1, 10),
        ];
    }
}
