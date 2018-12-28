#language: pt
# encoding: utf-8


Funcionalidade: Logar no site Soluna

Contexto: 
    Dado que estou no site soluna
    Quando eu clicar no botao de login no site Soluna

@loginSemSucessoSoluna
Esquema do Cenario: Login sem Sucesso 
    E preencher meu "<email>" e "<senha>" de forma incorreta 
    Entao me retornar a seguinte "<mensagem>"

    Exemplos:
        |email|senha|mensagem                          |
        |aasuh|55cok|Dados Incorretos. Tente novamente.|
        |assss|sssss|Dados Incorretos. Tente novamente.|
        |ttt  |     |Campos obrigatórios em branco.    |
        |     |iii  |Campos obrigatórios em branco.    |
        |     |     |Campos obrigatórios em branco.    |


@loginComSucessoSoluna
Esquema do Cenario: Login com sucesso
    E preencher meu "<email>" e "<senha>" de forma correta
    Entao me retornar a seguinte "<mensagem>"

    Exemplos:
        |email  |senha  |mensagem                                                              |
        |coco   |coco   |Agora você pode baixar White Blood Cell, o game produzido pela Soluna.|
        |amanda |amanda |Agora você pode baixar White Blood Cell, o game produzido pela Soluna.|