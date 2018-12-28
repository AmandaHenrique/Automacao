Dado("que estou no site Automacao") do
    visit'http://automacaocombatista.herokuapp.com/treinamento/home'
end

Quando("eu clicar na opcao busca de elementos e logo em seguida em tabela") do
    find("ul[class='collapsible collapsible-accordion']") #.text
    # .text devolve tudo em texto
    # ele achou e ja sabe que estou aqui dentro

    #@var =sduhsdusd  puts @var

    find('a', :text => 'Busca de elementos').click
    find('a', :text =>'Tabela').click
    sleep 5

end
  

Entao("me retornar as informacoes presentes na tabela") do
    
    
    page.has_text?('Arroz')
    expect(page.has_text?('Arroz')).to eql true
end