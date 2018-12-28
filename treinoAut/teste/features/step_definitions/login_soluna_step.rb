# loginSemSucessoSoluna
Dado("que estou no site soluna") do
    visit 'https://soluna-games.000webhostapp.com/home.html'
end
  
Quando("eu clicar no botao de login no site Soluna") do
     find('ul.navbar-nav.ml-auto')
     find('a' , :text => 'Login').click
end
  
Quando("preencher meu {string} e {string} de forma incorreta") do |email, senha|
    find("input[placeholder='E-mail']").set email
    find("input[placeholder='Senha']").set senha
    find("button[name='fazerLogin']").click
end
  
Entao("me retornar a seguinte {string}") do |mensagem|
    expect(page).to have_content(mensagem)
end


# loginComSucessoSoluna
Quando("preencher meu {string} e {string} de forma correta") do |email, senha|
    find("input[placeholder='E-mail']").set email
    find("input[placeholder='Senha']").set senha
    find("input[placeholder='Senha']").click
end