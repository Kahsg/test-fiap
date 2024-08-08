# Teste Fiap

## Orientações

A aplicação foi desenvolvida em Laravel 11 e PHP 8.3.

A maneira mais simples de executá-la é utilizando Docker através da interface [Sail](https://laravel.com/docs/11.x/sail).

Se for executar a aplicação sem utilizar a interface Sail, ajuste as configurações do banco de dados no arquivo de configuração `.env` e utilize o arquivo `database/dump.sql` para criar as tabelas e dados iniciais de teste.

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