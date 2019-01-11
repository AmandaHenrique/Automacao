#Cadastro Invalido
Quando("eu clicar no botao de registro no site Soluna") do
    steps %Q{
        Dado que estou no site soluna
    }
    #peguei no step login e nao preciso repetir no outro la em baixo pq esse Quando esta no contexto
    find('ul.navbar-nav.ml-auto')
    find('a' , :text => 'Registre-se').click
end

Quando("preencher meu {string} {string} {string} {string} {string} {string} {string} {string} de forma invalida") do |pNome, uNome, email, senha, dataNascimento, pais, genero, receberEmail|
    find("input[name='primeiro-nome']").set pNome
    find("input[name='ultimo-nome']").set uNome
    find("input[name='email']").set email
    find("input[name='senha']").set senha
    find("input[name='data-nascimento']").set dataNascimento
    
    find("select[class='custom-select d-block w-100']").click
    find("option", text:pais).click

    find("label[class='form-check-label']", text:genero).click

    if(receberEmail == "true")
        find("#receber-email").set(true)
    end

    click_button('Submit')
end

#Cadastro Valido
Quando("preencher meu {string} {string} {string} {string} {string} {string} {string} {string} de forma valida") do |pNome, uNome, email, senha, dataNascimento, pais, genero, receberEmail|
    find("input[name='primeiro-nome']").set pNome
    find("input[name='ultimo-nome']").set uNome
    find("input[name='email']").set email
    find("input[name='senha']").set senha
    find("input[name='data-nascimento']").set dataNascimento
    
    find("select[class='custom-select d-block w-100']").click
    find("option", text:pais).click

    find("label[class='form-check-label']", text:genero).click

    if(receberEmail == "true")
        #find('#receber-email').set(true) --,pode ser esse tambem
        check('receber-email', allow_label_click: true)
    end

    click_button('Submit')
end

# Entao dos dois pois escrevi eles da mesma forma na feature
Entao("me retonar a seguinte mensagem {string}") do |mensagem|
    expect(page).to have_css("#mensagem-cadastro" , :text=>mensagem) 
    #Se a mensagem estiver diferente ele da erro :D
end
