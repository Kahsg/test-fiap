<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;

class Turma extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $connection = 'mysql';

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'uuid',
        'nome',
        'descricao',
        'tipo',
    ];

    public function turma_tipo()
    {
        return $this->hasOne(TurmaTipo::class, 'id', 'tipo');
    }

    public function alunos()
    {
        return $this->hasMany(Matricula::class, 'turma_id', 'id');
    }
}
