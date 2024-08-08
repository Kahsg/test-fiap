<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class TurmaFactory extends Factory
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
            'descricao' => fake()->text(30),
            'tipo' => fake()->numberBetween(1, 4),
        ];
    }
}
