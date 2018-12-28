Dado("que estou no site Automacaoo do Batista") do
    visit'http://automacaocombatista.herokuapp.com/treinamento/home'
end
  
Quando("eu clicar em iteracoes na lista de funcionalidades") do
    find("ul[class='collapsible collapsible-accordion']")
    find('a', :text=>'Iterações').click
end
  
Quando("clicar na opcao drag and drop") do
    find('a', :text=>'Drag And Drop').click
end
  
Entao("arrastar a carinha para dentro do quadrado") do
    @img = find("#winston")
    @lugar = find("#dropzone")

    @img.drag_to @lugar

    sleep 5 
end