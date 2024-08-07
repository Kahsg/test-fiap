<?php

namespace App\Http\Requests\Alunos;

use App\Models\Aluno;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class AlunosUpdateRequest extends FormRequest
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
                'min:3',
                Rule::unique('alunos', 'usuario')->where(function ($query) {
                    return $query
                        ->where('uuid', '!=', $this->uuid);
                })
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
