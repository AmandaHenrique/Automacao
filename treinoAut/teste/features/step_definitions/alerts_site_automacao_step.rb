Dado("que estou no site Automacao do Batista") do                    
   visit 'http://automacaocombatista.herokuapp.com/mudancadefoco/alert'                                                       
end                                                                  
    
  
#alert js
    Quando("eu clicar no botao clique para js alert") do                 
        first("button[class='btn  waves-light green']").click
    end                                                                  
                                                                        
    Quando("aparecer um alert com a mensagem {string}") do |mensagem|      
        @alert = page.driver.browser.switch_to.alert
        #acha o alert na pagina

        expect(@alert.text).to eq mensagem
        #entao eu espero que o alert tenha um texto que seja igual a string                                        
    end                                                                  
                                                                        
    Quando("clicar no botao ok dentro do js alert") do                   
        @alert.accept
        #pego o alert guardado na minha variavel e clico no aceitar            
    end                                                                  
                                                                        
    Entao("exibir a mensagem {string} no resultado") do |mensagem| 
        expect(page).to have_css("p#result" , :text=>mensagem)
    end



#confirm js
    Quando("eu clicar no botao clique para js confirm") do
        find("button[onclick='jsConfirm()']").click
    end

    Quando("aparecer um alert com a seguinte mensagem {string}") do |mensagem|      
        @confirm = page.driver.browser.switch_to.alert
        expect(confirm.text).to eq(mensagem)                                          
    end         

    Quando("clicar no botao ok dentro do js confirm") do
        @confirm.accept
    end
    
    Entao("exibir a mensagem {string}") do |mensagem|
        expect(page).to have_css("p#result", :text=>mensagem)
    end


#cancel js                                                                                                                        
    Quando("clicar no botao cancel dentro do js confirm") do              
       @cancel = page.driver.browser.switch_to.alert
       @cancel.dismiss        
    end   

    Entao("exibir a seguinte mensagem {string}") do |string|
        expect(page).to have_css("p#result", :text=>string)
    end

#promptJs
    Quando("eu clicar no botao clique para js prompt") do
        find('ul > li:nth-child(7) > button').click
    end
    
    Quando("aparecer um prompt com a mensagem {string}") do |mensagem|
        @prompt = page.driver.browser.switch_to.alert
        expect(@prompt.text).to eql mensagem
    end
    
    Quando("eu digitar a seguinte {string}") do |string|
        @prompt.send_keys(string)
        sleep 2
    end
    
    Quando("clicar no botao ok dentro do prompt js") do
        @prompt.accept
    end
    
    Entao("exibir o seguinte {string}") do |string|
        expect(page).to have_css("p#result", :text=>"Você digitou: #{string}" )
    end