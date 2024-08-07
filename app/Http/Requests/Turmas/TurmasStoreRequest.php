<?php

namespace App\Http\Requests\Turmas;

use Illuminate\Foundation\Http\FormRequest;

class TurmasStoreRequest extends FormRequest
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
            'nome' => [
                'required',
                'string',
                'min:3'
            ],
            'tipo' => [
                'required',
                'string',
                'exists:turma_tipos,uuid'
            ],
            'descricao' => [
                'required',
                'string',
            ],
        ];
    }


    public function attributes()
    {
        return [
            'nome' => 'Nome da turma',
            'tipo' => 'Tipo',
            'descricao' => 'Descrição da turma',
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
