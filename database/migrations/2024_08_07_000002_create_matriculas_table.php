<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('matriculas', function (Blueprint $table) {
            $table->id();
            $table->uuid('uuid')
                ->unique();
            $table->unsignedBigInteger('turma_id')
                ->comment('Id da turma')
                ->index('turma_id_foreign');
            $table->foreign('turma_id')
                ->references('id')
                ->on('turmas');
            $table->unsignedBigInteger('aluno_id')
                ->comment('Id do aluno')
                ->index('aluno_id_foreign');
            $table->foreign('aluno_id')
                ->references('id')
                ->on('alunos');
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('matriculas');
    }
};
