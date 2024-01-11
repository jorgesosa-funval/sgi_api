<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Users>
 */
class UsersFactory extends Factory
{
    protected static ?string $password;

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'role_id' => $this->faker->numberBetween(1, 2),
            'userName' => $this->faker->userName,
            'lastName' => $this->faker->lastName,
            'email' => fake()->unique()->safeEmail(),
            'password' => static::$password ??= Hash::make('1234'),
            'address' => $this->faker->address,
        ];
    }
}
