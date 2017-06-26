@rules
Feature: Circulating in the rules

Scenario: Rules
	Given I open the site olx Brazil
	Then I wait for 10 seconds
	Then I click link by text "Regras"
	Then I wait for 5 seconds
	Then I should see "Regras para anúncios"
	Then I wait for 5 seconds
	Then I should see "As regras abaixo foram criadas para ajudar na publicação de anúncios de boa qualidade e com relevância para compradores e interessados."
	Then I should see "Lembramos que estas Regras são constantemente revisadas e podem sofrer alterações a exclusivo critério da OLX. Recomendamos que você sempre consulte esta página antes de postar um anúncio."
	Then I wait for 3 seconds
	Then I click item by href "#naopermitido"
	Then I wait for 2 seconds
	Then I should see "10- Produtos e serviços não permitidos"
	Then I click item by href "/hc/pt-br/articles/212425125-Produtos-e-servi%C3%A7os-n%C3%A3o-permitidos-na-OLX"
	Then I wait for 10 seconds
	Then I click link by title "Sim"
	Then I wait for 2 seconds
	Then I should see "Ficamos felizes em poder te ajudar! :)"
	Then I wait for 3 seconds
