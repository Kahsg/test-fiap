<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class AlunoFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'uuid' => fake()->uuid(),
            'nome' => fake()->name(),
            'nascimento' => fake()->date('Y-m-d', now()),
            'usuario' => strtolower(fake()->userName()),
        ];
    }
}
