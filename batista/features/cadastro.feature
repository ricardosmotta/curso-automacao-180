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