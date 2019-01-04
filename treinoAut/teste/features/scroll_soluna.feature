#language: pt
# encoding: utf-8

Funcionalidade: Realizando Scroll no site Soluna

Contexto:
    Dado que estou no site soluna

@scrollSoluna
Cenario: Scroll
    Quando eu rolar minha pagina inicial para baixo
    Entao encontrar uma exibicao de video com a mensagem "VÃƒÂ­deos" e retornar para o topo da pagina

