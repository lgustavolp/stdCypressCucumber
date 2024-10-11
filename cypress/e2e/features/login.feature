#language: pt

Funcionalidade: Login

    Como um usuario regular do sistema, que quero poder fazer Login
    Para que eu possa acessar minhas informações e também os recursos exclusivos do sistema

    BDD (Behavior Drien Development) - Desenvolvimento guiado por comportamento

    Contexto:
        Dado que acesso a pagina de login

    Cenario: Login do usuario

        Quando submeto minhas credenciais:
            |username|qa       |
            |password|xperience|
        Então sou autenticado no sistema 

    Esquema do Cenário: Tentativa de fazer login

        Quando submeto minhas credenciais:
            |username|<usuario>|
            |password|<senha>  |
        Então devo ver a notificação "<mensagem>"

        Exemplos:
        |usuario|senha |mensagem                      |
        |qa     |testLG|Oops! Credenciais inválidas :(|
        |teste  |testLG|Oops! Credenciais inválidas :(|
        |       |testLG|Informe o seu nome de usuário!|
        |qa     |      |Informe a sua senha secreta!  |

