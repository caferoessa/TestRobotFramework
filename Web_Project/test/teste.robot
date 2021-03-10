***Settings***
Documentation   Template file for Web scenarios.

Library         SeleniumLibrary

Resource        ../base.robot

###SETUP: roda a keyword antes da suite ou antes de um teste
###TEARDOWN: roda a keyword depois de uma site ou um teste
###[Setup] or [Teardown]: ignora os da suite. adicionado direto no teste para rodar especificamente para este

Test Setup      Open chrome
#Test Teardown   Close chrome 

*** Test Cases ***

Scenario: Buy a product in web shop
    Given I am in the home screen page
    When I select a product
    And add product to cart
    And proceed to checkout
    Then I can finish the order