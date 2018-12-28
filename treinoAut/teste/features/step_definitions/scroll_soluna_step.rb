Quando("eu rolar minha pagina inicial para baixo") do
    page.execute_script "window.scrollTo(0,1000)"
    #scrooooooooooll bottom
    sleep 3

end

Entao("encontrar uma exibicao de video com a mensagem {string} e retornar para o topo da pagina") do |mensagem|
    find("div[class='jumbotron jumbotron-fluid']")
    expect(page).to have_css(".display-4" , :text=>mensagem) 
    sleep 2
    page.execute_script "window.scrollTo(0,0)"
    sleep 3
end