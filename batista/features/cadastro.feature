# language: pt

Funcionalidade: Cadastro
    Sendo um cliente da empresa
    Quero efetuar o login
    Para que eu possa realizar uma compra

    @temp
    Cenario: Fazer cadastro

        Dado que acesso a página de login
        Quando submeto o meu cadastro completo
        Então sou redirecionado para tela de sucesso

    Cenario: Submeter cadastro sem o nome

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem o nome
        Então vejo a mensagem de alerta: Oops. Informe seu nome completo!

    Cenario: Submeter cadastro sem o email

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem o email
        Então vejo a mensagem de alerta: Oops. Informe um email válido!

    Cenario: Submeter cadastro com email incorreto

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com incorreto
        Então vejo a mensagem de alerta: Oops. Informe um email válido!

    Cenario: Submeter cadastro sem a senha

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem a senha
        Então vejo a mensagem de alerta: Oops. Informe sua senha secreta!
