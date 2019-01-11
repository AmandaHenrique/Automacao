#se eu nao usar tags no hooks , ele sempre para isso antes/depois dos meus cenarios
#tipo um contexto mas antes de TODO o meu projeto inteiro, mas logico posso chamar 
#cada cenario de cada vez usando as tags do cenario, e o hooks vira antes/depois do cenario chamado
#usando hooks issoserve para o projeto inteiro

Before '@fazerlogin' do
    visit 'https://soluna-games.000webhostapp.com/home.html'
    find('ul.navbar-nav.ml-auto')
    find('a' , :text => 'Login').click
    find("input[placeholder='E-mail']").set 'amanda'
    find("input[placeholder='Senha']").set 'amanda'
    find("button[name='fazerLogin']").click
end

After '@depoislogin' do
    visit 'https://www.google.com.br/'
    sleep 5
end