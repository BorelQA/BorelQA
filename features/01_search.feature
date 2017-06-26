@search-car
Feature: Access site olx the Brazil

Scenario: Do a site search
 Given I open the site olx Brazil
 Then I wait for 25 seconds
 Then I click item by href "http://sp.olx.com.br"
 Then I wait for 10 seconds
 Then I click link by title "Veículos e barcos"
 Then I wait for 10 seconds
 Then I insert text "Fiat Uno vivace" into "searchtext"
 	And I click item by id "searchbutton"
 Then I wait for 10 seconds
 Then I click link by text "DDD 11 - São Paulo e região"
 Then I wait for 10 seconds
 Then I click span by text "Carros"
 Then I wait for 10 seconds
 Then I click link by title "Ordenar por preço"
 Then I wait for 10 seconds
 Then I click link by text "Profissional"
 Then I wait for 8 seconds
 Then I click link by title "Fiat Uno vivace 2012 - 2012"
 Then I wait for 10 seconds
 Then I should see "Dicas de Segurança | Evite pagar adiantado | Desconfie de anúncios não realistas"
 Then I wait for 4 seconds
 Then I click button by text "Iniciar chat"
 Then I wait for 3 seconds
 Then I should see "Para enviar uma mensagem você precisa estar logado."
 Then I wait for 2 seconds
 Then I click button by text "Fazer login"
 Then I wait for 10 seconds
 Then I insert text "borelqa@gmail.com" into "login_email"
  And I insert text "230996" into "login_password"
 Then I wait for 2 seconds
 Then I click item by id "bt_submit_login"
 Then I wait for 10 seconds
