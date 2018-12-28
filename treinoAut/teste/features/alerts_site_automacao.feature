#language: pt
# encoding: utf-8

Funcionalidade: Verificar difentes tipos de alerts no site Automacao do batista
#Já vou fazer ele na propria pagina pra nao ter q ficar fazendo um script que eu ja sei de achar e clicar

    Contexto:
        Dado que estou no site Automacao do Batista

@alertJs
Cenario: Alert JS
    Quando eu clicar no botao clique para js alert
    E aparecer um alert com a mensagem "Eu sou um alerta JS!"
    E clicar no botao ok dentro do js alert
    Entao exibir a mensagem "Você clicou no alerta com sucesso!!" no resultado

@confirmJs
Cenario: Confirm JS
    Quando eu clicar no botao clique para js confirm
    E aparecer um alert com a seguinte mensagem "Eu sou uma confirmação JS!"
    E clicar no botao ok dentro do js confirm
    Entao exibir a mensagem "Você clicou: Ok"

@cancelJs
Cenario: Cancel JS
    Quando eu clicar no botao clique para js confirm
    E aparecer um alert com a seguinte mensagem "Eu sou uma confirmação JS!"
    E clicar no botao cancel dentro do js confirm
    Entao exibir a seguinte mensagem "Você clicou: Cancel"

@promptJs
Esquema do Cenario: Prompt JS
    Quando eu clicar no botao clique para js prompt
    E aparecer um prompt com a mensagem "Eu sou um  prompt JS!"
    E eu digitar a seguinte "<mensagem>"
    E clicar no botao ok dentro do prompt js
    Entao exibir o seguinte "<resultado>"

    Exemplos:
        |mensagem    |resultado  |
        |minha nossa |minha nossa|
        |merdaVeia   |merdaVeia  |
        |Consegui!   |Consegui!  |
        
        # |escrevendo sozinho |
        # |esquentando burrito|




