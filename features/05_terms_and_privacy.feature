@terms-and-privacy

Feature: Circulating in the Terms and privacy

Scenario: Terms and privacy
	Given I open the site olx Brazil
	Then I wait for 10 seconds
	Then I click link by text "Termos e privacidade"
	Then I wait for 5 seconds
	Then I should see "Termos de Uso | Termos e Condições Gerais de Uso"
	Then I click item by href "#disposicoes"
	Then I wait for 4 seconds
	Then I should see "9.1. Modificações. | 9.2. Direito de exclusão e de solicitação de documentos. | 9.3. Menores de idade. | 9.4. Duração e Término. | 9.5. Resolução de conflitos. | 9.6. Comunicações. | 9.7. Renúncia e autonomia das disposições."
	Then I wait for 2 seconds
	Then I click link by title "Sim"
	Then I wait for 2 seconds
	Then I should see "Ficamos felizes em poder te ajudar! :)"
	Then I wait for 3 seconds
