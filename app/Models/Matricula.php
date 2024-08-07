<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;

class Matricula extends Model
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
        'turma_id',
        'aluno_id',
    ];

    public function turma()
    {
        return $this->hasOne(Turma::class, 'id', 'turma_id');
    }

    public function aluno()
    {
        return $this->hasOne(Aluno::class, 'id', 'aluno_id');
    }
}
