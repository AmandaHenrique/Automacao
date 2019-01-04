Dado("que estou no site Automacao do Batista") do                    
   visit 'http://automacaocombatista.herokuapp.com/mudancadefoco/alert'                                                       
end                                                                  
    
  
alert js
    Quando("eu clicar no botao clique para js alert") do                 
        find('ul > li:nth-child(1) > button').click
    end                                                                  
                                                                        
    Quando("aparecer um alert com a mensagem {string}") do |mensagem|      
        alert = page.driver.browser.switch_to.alert
        #acha o alert na pagina

        expect(alert.text).to eq mensagem
        #entao eu espero que o alert tenha um texto que seja igual a string                                        
    end                                                                  
                                                                        
    Quando("clicar no botao ok dentro do js alert") do                   
        alert = page.driver.browser.switch_to.alert
        #acha o alert na pagina, nao da pra reaproveitar a variavel
        alert.accept
        #pego o alert guardado na minha variavel e clico no aceitar            
    end                                                                  
                                                                        
    Entao("exibir a mensagem {string} no resultado") do |mensagem| 
        expect(page).to have_css("p#result" , :text=>mensagem)
    end




confirm js
    Quando("eu clicar no botao clique para js confirm") do
        find('ul > li:nth-child(4) > button').click
    end

    Quando("aparecer um alert com a seguinte mensagem {string}") do |mensagem|      
        alert = page.driver.browser.switch_to.alert
        expect(alert.text).to eq(mensagem)                                          
    end         

    Quando("clicar no botao ok dentro do js confirm") do
        alert = page.driver.browser.switch_to.alert
        alert.accept
    end
    
    Entao("exibir a mensagem {string}") do |mensagem|
        expect(page).to have_css("p#result", :text=>mensagem)
    end


cancel js                                                                                                                        
    Quando("clicar no botao cancel dentro do js confirm") do              
        alert = page.driver.browser.switch_to.alert
        alert.dismiss        
    end   

    Entao("exibir a seguinte mensagem {string}") do |string|
        expect(page).to have_css("p#result", :text=>string)
    end

promptJs
    Quando("eu clicar no botao clique para js prompt") do
        find('ul > li:nth-child(7) > button').click
    end
    
    Quando("aparecer um prompt com a mensagem {string}") do |mensagem|
        alert = page.driver.browser.switch_to.alert
        expect(alert.text).to eql mensagem
    end
    
    Quando("eu digitar a seguinte {string}") do |string|
        alert = page.driver.browser.switch_to.alert
        alert.send_keys(string)
        sleep 2
    end
    
    Quando("clicar no botao ok dentro do prompt js") do
        alert = page.driver.browser.switch_to.alert
        alert.accept
    end
    
    Entao("exibir o seguinte {string}") do |string|
        expect(page).to have_css("p#result", :text=>"VocÃª digitou: " + "#{string}" )
    end