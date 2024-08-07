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
        Schema::create('turmas', function (Blueprint $table) {
            $table->id();
            $table->uuid('uuid')
                ->unique();
            $table->string('nome')
                ->comment('Nome da turma');
            $table->text('descrição')
                ->comment('Descrição da turma');
            $table->unsignedBigInteger('tipo')
                ->comment('Id do tipo de turma')
                ->index('tipo_foreign');
            $table->foreign('tipo')
                ->references('id')
                ->on('turma_tipos');
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('turmas');
    }
};
