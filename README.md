# Teste Fiap

## Orientações

A aplicação foi desenvolvida em Laravel 11 e PHP 8.3.

A maneira mais simples de executá-la é utilizando Docker através da interface [Sail](https://laravel.com/docs/11.x/sail).

Se for executar a aplicação sem utilizar a interface Sail, ajuste as configurações do banco de dados no arquivo de configuração `.env` e utilize o arquivo `database/dump.sql` para criar as tabelas e dados iniciais de teste.

> Utilize as seguintes credenciais para o usuário padrão da aplicação:
**Email:** admin@email.com.br
**Senha:** password

Gere o arquivo de configuração `.env`:
```
$ cp .env.exemple .env
```
Instale as dependências do projeto:
```
$ composer install
```

Execute o comando a seguir para criar os containers:
```
$ ./vendor/bin/sail up
```

Em outro terminal execute as migrações para a criação das tabelas e dados iniciais de teste:

```
$ ./vendor/bin/sail artisan migrate --seed
```

Execute o comando a seguir para a instalação e compilação dos assets:

```
$ ./vendor/bin/sail npm install
```
```
$ ./vendor/bin/sail npm run build
```

Acesse [http://localhost](http://localhost) para visualizar a aplicação.

## RECAPTCHA
Para utilizar o recurso recaptcha, é preciso realizar o registro da aplicação e obter suas chaves, que deverão ser inseridas no arquivo `.env`.

Para configurar o recaptcha no localhost, acesse `https://www.google.com/recaptcha/admin/create`, preencha as informações solicitadas, selecionando no campo `tipo de recaptcha` a opção `Desafio (V2)` e em `Domínios` digite apenas `localhost` e aperte enter.

```
Se você estiver usando 127.0.0.1 em vez de localhost, adicione 127.0.0.1 também.
```

Após finalizar o registro, insira as chaves fornecidas no arquivo `.env`.