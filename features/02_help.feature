@help
Feature: Seacrch in help

Scenario: Testing menu help Chat
	Given I open the site olx Brazil
	Then I wait for 10 seconds
	Then I click link by text "Ajuda e contato"
	Then I wait for 5 seconds
	Then I should see "Opa!"
	Then I should see "Estamos atualizando nosso site pra você desapegar mais rápido e com mais facilidade ainda!"
	Then I should see "Seus anúncios podem demorar um pouquinho para serem inseridos no momento, mas logo, logo estarão ativos pra que você possa desapegar rapidinho em nosso site. :)"
	Then I click h4 by text "Vendedores"
	Then I wait for 10 seconds
	Then I click item by href "/hc/pt-br/sections/202558309-Chat"
	Then I wait for 5 seconds
	Then I click item by href "/hc/pt-br/articles/212482985-Como-bloqueio-uma-pessoa-no-chat-"
	Then I wait for 5 seconds
	Then I should see "Como bloqueio uma pessoa no chat?"
	Then I wait for 10 seconds
	Then I click link by title "Sim"
	Then I wait for 2 seconds
	Then I should see "Ficamos felizes em poder te ajudar! :)"
	Then I wait for 3 seconds

Scenario: Testing menu help Minha Loja
	Given I open the site olx Brazil
	Then I wait for 10 seconds
	Then I click link by text "Ajuda e contato"
	Then I wait for 5 seconds
	Then I should see "Opa!"
	Then I should see "Estamos atualizando nosso site pra você desapegar mais rápido e com mais facilidade ainda!"
	Then I should see "Seus anúncios podem demorar um pouquinho para serem inseridos no momento, mas logo, logo estarão ativos pra que você possa desapegar rapidinho em nosso site. :)"
	Then I click h4 by text "Vendedores"
	Then I wait for 10 seconds
	Then I click item by href "/hc/pt-br/sections/203152205-Minha-loja"
	Then I wait for 5 seconds
	Then I click item by href "/hc/pt-br/articles/211995905-%C3%89-gr%C3%A1tis-ter-uma-loja-na-OLX-"
	Then I wait for 8 seconds
	Then I should see "É grátis ter uma loja na OLX?"
	Then I wait for 3 seconds
	Then I click link by title "Não"
	Then I wait for 3 seconds
	Then I should see "Precisa de ajuda com a sua dúvida?"
	Then I wait for 3 seconds
