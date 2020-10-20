#language:pt

Funcionalidade: Cadastar Pessoa

Cenario: Realizar novo cadastro

Dado que queira realizar um novo cadastro de uma pessoa
Quando informar <nome> corretamente
E informar <cpf> corretamente
E informar <logradouro> corretamente
E informar <numero> corretamente
E informar <complemento> corretamente
E informar <bairro> corretamente
E informar <cidade> corretamente
E informar <estado> corretamente
E informar <ddd> corretamente
E informar <numero> corretamente
Então devo seceber status code 201 Created
E o response body de retornar os dados informados nos parêmetros de entrada


Cenario: Realizar cadastro informando CPF já cadastrado

Dado que queira realizar um cadastro de uma pessoa
Quando informar um <cpf> já cadastrado
E informar <logradouro> corretamente
E informar <numero> corretamente
E informar <complemento> corretamente
E informar <bairro> corretamente
E informar <cidade> corretamente
E informar <estado> corretamente
E informar <ddd> corretamente
E informar <numero> corretamente
Então deve apresentar status code 400 Bad Request
E deve apresentar a mensagem "Já existe pessoa cadastrada com o CPF 12345678910"

Cenario: Realizar cadastro informando número de telefone já cadastrado

Dado que queira realizar um cadastro de uma pessoa
Quando informar um <cpf> corretamente
E informar <logradouro> corretamente
E informar <numero> corretamente
E informar <complemento> corretamente
E informar <bairro> corretamente
E informar <cidade> corretamente
E informar <estado> corretamente
E informar <ddd> corretamente
E informar <numero> já cadastrado
Então deve apresentar status code 400 Bad Request
E deve apresentar a mensagem "Já existe pessoa cadastrada com o Telefone (XX)XXXXXXXXX"