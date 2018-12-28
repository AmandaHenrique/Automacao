#language: pt
# encoding: utf-8


Funcionalidade: Logar no site GitHub

Contexto:
    Dado que estou na pagina de login do site GitHub

@loginSemSucesso
Esquema do Cenario: login sem sucesso 
    Quando eu preencher meu "<email>" e "<senha>" errados
    Entao a seguinte "<mensagem>" devera ser exibida

    Exemplos:
        |email   |senha|mensagem                       |
        |iiiiiiii|     |Incorrect username or password.|
        |grgrg   |coco |Incorrect username or password.|
        |        |     |Incorrect username or password.|
        |        |dsdd |Incorrect username or password.|

@loginComSucesso
Cenario: login com sucesso
    Quando eu preencher meu email e senha corretamente
    Entao exibir o nome de um dos meus repositorios
