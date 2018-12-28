Dado("que estou no site de Automação") do                                       
    visit 'http://automacaocombatista.herokuapp.com/buscaelementos/dropdowneselect'
end                                                                             
                                                                                  
Quando("eu clicar no dropdown de gênero") do                                    
    find("input[value='Gênero']").click
end                                                                             
                   
Entao("me retornar os       resultado {string}") do |string|                          
    expect('#select-options-f220d505-1931-e7b4-c61f-f432cc575fcb').to have_content(string)
end                                                                             
                                                                                  