#language: pt
# encoding: utf-8

Funcionalidade: Obter resultados de um select

Contexto: 
    Dado que estou no site de Automação

@selectGenero
Cenario: Observar resultados do select de gênero
    Quando eu clicar no dropdown de gênero
    Entao me retornar os resultado "Mulher"
