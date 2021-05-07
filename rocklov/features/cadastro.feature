#language: pt


Funcionalidade: Cadastro
    Sendo um músico que possui equipamentos musicais
    Quero fazer o meu cadastro no RockLov
    Para que eu possa disponibilizá-los para locação

    @temp
    Cenario: Efetuar cadastro

        Dado que acesso a página de cadastro
        Quando submeto meus dados
        Então sou redirecionado para o dashboard
        
    Cenario: Submeter cadastro SEM nome

        Dado que acesso a página de cadastro
        Quando submeto meus dados SEM o nome
        Então vejo a mensagem de alerta: Oops. Informe seu nome completo!

    Cenario: Submeter cadastro SEM o e-mail

        Dado que acesso a página de cadastro
        Quando submeto meus dados SEM o e-mail
        Então vejo a mensagem de alerta: Oops. Informe um e-mail válido!

    Cenario: Submeter cadastro com e-mail incorreto

        Dado que acesso a página de cadastro
        Quando submeto meus dados com e-mail incorreto
        Então vejo a mensagem de alerta: Oops. Informe um e-mail válido!

    Cenario: Submeter cadastro SEM a senha

        Dado que acesso a página de cadastro
        Quando submeto meus dados SEM a senha
        Então vejo a mensagem de alerta: Oops. Informe sua senha secreta!

    Cenario: Email já cadastrado

        Dado que acesso a página de cadastro
        Quando submeto os dados com um e-mail já cadastrado
        Então vejo a mensagem de alerta: Email já cadastrado