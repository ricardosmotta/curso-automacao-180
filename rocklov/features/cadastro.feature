#language: pt


Funcionalidade: Cadastro
    Sendo um músico que possui equipamentos musicais
    Quero fazer o meu cadastro no RockLov
    Para que eu possa disponibilizá-los para locação

    @cadastro
    Cenario: Efetuar cadastro

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro:
            | nome          | email             | senha |
            | Ricardo Motta | rmotta@google.com | teste |
        Então sou redirecionado para o Dashboard

    Esquema do Cenario: Tentativa de Cadastro

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro:
            | nome         | email         | senha         |
            | <nome_input> | <email_input> | <senha_input> |
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | nome_input    | email_input       | senha_input | mensagem_output                  |
            |               | ricardo@teste.com | teste       | Oops. Informe seu nome completo! |
            | Ricardo Motta |                   | teste       | Oops. Informe um email válido!   |
            | Ricardo Motta | ricardo#teste.com | teste       | Oops. Informe um email válido!   |
            | Ricardo Motta | ricardo#teste     | teste       | Oops. Informe um email válido!   |
            | Ricardo Motta | ricardo@          | teste       | Oops. Informe um email válido!   |
            | Ricardo Motta | ricardo@teste.com |             | Oops. Informe sua senha secreta! |