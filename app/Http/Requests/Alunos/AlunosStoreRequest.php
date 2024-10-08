<?php

namespace App\Http\Requests\Alunos;

use Illuminate\Foundation\Http\FormRequest;

class AlunosStoreRequest extends FormRequest
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

    protected function prepareForValidation()
    {
        $this->merge([
            'usuario' => !empty($this->usuario) ? strtolower($this->usuario) : null,
        ]);
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
            'nascimento' => [
                'required',
                'string',
                'date_format:Y-m-d',
                'before_or_equal:today',
            ],
            'usuario' => [
                'required',
                'string',
                'unique:alunos,usuario',
                'min:3'
            ],
        ];
    }


    public function attributes()
    {
        return [
            'nome' => 'Nome',
            'nascimento' => 'Data de Nascimento',
            'usuario' => 'Usuário',
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
