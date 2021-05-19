#language: pt


Funcionalidade: Cadastro
    Sendo um músico que possui equipamentos musicais
    Quero fazer o meu cadastro no RockLov
    Para que eu possa disponibilizá-los para locação

    @cadastro
    Cenario: Efetuar cadastro

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro: 
            |nome         |email            |senha|
            |Ricardo Motta|rmotta@google.com|teste|
        Então sou redirecionado para o dashboard

    @tentativa_cadastro
    Cenario: Submeter cadastro SEM nome

        Dado que acesso a página de cadastro
        Quando submeto meus dados SEM o nome
        Então vejo a mensagem de alerta: "Oops. Informe seu nome completo!"

    @tentativa_cadastro
    Cenario: Submeter cadastro SEM o e-mail

        Dado que acesso a página de cadastro
        Quando submeto meus dados SEM o e-mail
        Então vejo a mensagem de alerta: "Oops. Informe um email válido!"

    @tentativa_cadastro
    Cenario: Submeter cadastro com e-mail inválido

        Dado que acesso a página de cadastro
        Quando submeto meus dados com e-mail incorreto
        Então vejo a mensagem de alerta: "Oops. Informe um email válido!"

    @tentativa_cadastro
    Cenario: Submeter cadastro SEM a senha

        Dado que acesso a página de cadastro
        Quando submeto meus dados SEM a senha
        Então vejo a mensagem de alerta: "Oops. Informe sua senha secreta!"

    @tentativa_cadastro
    Cenario: Email ja cadastrado

        Dado que acesso a página de cadastro
        Quando submeto os dados com um e-mail já cadastrado
        Então vejo a mensagem de alerta: Email já cadastrado