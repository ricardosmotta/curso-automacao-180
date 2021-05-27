#language: pt

Funcionalidade: Login
    Sendo um usuário cadastrado
    Quero acessar o sistema da Rocklov
    Para que eu possa anunciar meus equipamentos musicais

    @temp
    Cenario: Login do usuário

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "fulano@teste.com" e "teste"
        Então sou redirecionado para o Dashboard

    Esquema do Cenario: Tentativa de login

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "<email_input>" e "<senha_input>"
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | email_input       | senha_input | mensagem_output                  |
            | fulano@teste.com  | 1234        | Usuário e/ou senha inválidos.    |
            | ciclano@teste.com | 1234        | Usuário e/ou senha inválidos.    |
            | fulano@           | teste       | Oops. Informe um email válido!   |
            |                   | teste       | Oops. Informe um email válido!   |
            | fulano@teste.com  |             | Oops. Informe sua senha secreta! |



