#language:pt

Funcionalidade: Cadastar Pessoa

Cenario: Realizar novo cadastro

Dado que queira realizar um novo cadastro de uma pessoa
Quando informar os dados corretamente
Então devo seceber status code 201 Created
E o response body de retornar os dados informados nos parêmetros de entrada


Cenario: Realizar cadastro informando CPF já cadastrado

Dado que queira realizar um cadastro de uma pessoa
Quando informar um CPF já cadastrado
Então deve apresentar status code 400 Bad Request
E deve apresentar a mensagem "Já existe pessoa cadastrada com o CPF 12345678910"

Cenario: Realizar cadastro informando número de telefone já cadastrado

Dado que queira realizar um cadastro de uma pessoa
Quando informar um número de telefone já cadastrado
Então deve apresentar status code 400 Bad Request
E deve apresentar a mensagem "Já existe pessoa cadastrada com o Telefone (XX)XXXXXXXXX"