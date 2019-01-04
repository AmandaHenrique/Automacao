Dado("que estou na pagina de login do site GitHub") do                                     
    visit 'https://github.com/login'
end                                                                                
                                                                                     
Quando("eu preencher meu {string} e {string} errados") do |email, senha|        
    find('#login_field').set email
    find('#password').set senha
    find("input[name='commit']").click
    
    
    # if page.has_text? ('so you canâ€™t sign in to it directly. Try signing into your personal account and then using the context switcher on your dashboard: Donâ€™t have a personal account? Talk to someone in your organization about getting access.')
    #     visit 'https://github.com/login'
    # end

end                                                                                
                                                                                     
Entao("a seguinte {string} devera ser exibida") do |mensagem|                        
    expect(page).to have_content(mensagem)
end




Quando("eu preencher meu email e senha corretamente") do
    find('#login_field').set 'aamandahenrique@hotmail.com'
    find('#password').set 'kipper2310'
    find("input[name='commit']").click
  end


Entao("exibir o nome de um dos meus repositorios") do                      
    find("ul[class='list-style-none']")
end
