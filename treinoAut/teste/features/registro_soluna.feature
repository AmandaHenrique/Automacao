#language: pt
# encoding: utf-8

Funcionalidade: Registro do site Soluna

Contexto:
    #Dado que estou no site soluna
    # Quando tenho um 'Dado que' igual ao outro, nao preciso coloca-lo no step
    # pois ele ja sabe que é igual e já faz
    Quando eu clicar no botao de registro no site Soluna
    

@registroInvalidoSoluna
    Esquema do Cenario: Registro sem sucesso
        E preencher meu "<pNome>" "<uNome>" "<email>" "<senha>" "<dataNascimento>" "<pais>" "<genero>" "<receberEmail>" de forma invalida
        Entao me retonar a seguinte mensagem "<mensagem>"
    Exemplos:
        |pNome   |uNome   |email                |senha     |dataNascimento|pais          |genero|receberEmail|mensagem                     |
        |Maria   |Maria   |                     |          |05/07/2013    |Inglaterra    |Mulher|true        |Campos obrigatórios em branco|
        |Josefina|Silva   |josefina@hotmail.com |          |03/08/2013    |Canadá        |Mulher|false       |Campos obrigatórios em branco|
        |Coco    |Maria   |                     |pinga789  |10/10/2015    |Brasil        |Homem |false       |Campos obrigatórios em branco|


@registroValidoSoluna
    Esquema do Cenario: Registro com sucesso
        E preencher meu "<pNome>" "<uNome>" "<email>" "<senha>" "<dataNascimento>" "<pais>" "<genero>" "<receberEmail>" de forma valida
        Entao me retonar a seguinte mensagem "<mensagem>"
    Exemplos:
        |pNome   |uNome   |email                |senha     |dataNascimento|pais          |genero|receberEmail|mensagem                   |
        |Maria   |Maria   |maria@hotmail.com    |paçoquita |13/12/2013    |Portugal      |Mulher|true        |Cadastro feito com sucesso!|
        |Joao    |Silvano |joaozinho@gmail.com  |paçoquita |25/09/1939    |Espanha       |Homem |true        |Cadastro feito com sucesso!|
        |Joao    |Silvano |pascoa@gmail.com     |paçoquita |23/09/1939    |Inglaterra    |Mulher|true        |Cadastro feito com sucesso!|



