@login
Feature: Login in site

Scenario: Login
	Given I open the site olx Brazil
	Then I wait for 10 seconds
	Then I click item by href "https://www3.olx.com.br/account/form_login"
	Then I wait for 3 seconds
	Then I insert text "borelqa@gmail.com" into "login_email"
   And I insert text "230996" into "login_password"
  Then I wait for 2 seconds
  Then I click item by id "bt_submit_login"
  Then I wait for 10 seconds
	Then I should see "Você não possui anúncios publicados no momento."
	Then I wait for 12 seconds
