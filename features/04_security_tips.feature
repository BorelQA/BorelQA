@security-tips

Feature: Circulating in the Security Tips

Scenario: Security Tips
	Given I open the site olx Brazil
	Then I wait for 10 seconds
	Then I click link by text "Dicas de segurança"
	Then I wait for 5 seconds
	Then I click item by href "/hc/pt-br/articles/211376809-Como-fa%C3%A7o-uma-den%C3%BAncia-"
	Then I wait for 5 seconds
	Then I should see "Como faço uma denúncia?"
	Then I wait for 3 seconds
	Then I click link by title "Não"
	Then I wait for 3 seconds
	Then I should see "Precisa de ajuda com a sua dúvida?"
	Then I wait for 3 seconds
