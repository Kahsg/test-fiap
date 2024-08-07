<?php

namespace App\Http\Requests\Matriculas;

use Illuminate\Foundation\Http\FormRequest;

class MatriculasStoreRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules(): array
    {
        return [
            'turma_id' => [
                'required',
                'string',
                'exists:turmas,uuid'
            ],
            'aluno_id' => [
                'required',
                'string',
                'exists:alunos,uuid'
            ],
        ];
    }


    public function attributes()
    {
        return [
            'turma_id' => 'Turma',
            'aluno_id' => 'Aluno',
        ];
    }

    public function messages(): array
    {
        return [
            '*.required' => 'Este campo é obrigatório.',
            '*.string' => 'Este dado deve ser do tipo texto.',
            '*.unique' => ':input já está sendo utilizado.',
            '*.date_format' => 'A data informada é inválida.',
            '*.before_or_equal' => 'A data informada é inválida.',
            '*.min' => 'Este dado precisa ter ao menos 3 caracteres.',
        ];
    }
}
