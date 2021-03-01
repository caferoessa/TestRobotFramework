***Settings***
Documentation   Template file for Web scenarios.

Library         SeleniumLibrary

Resource        ../resources/web_resource.robot

###SETUP: roda a keyword antes da suite ou antes de um teste
###TEARDOWN: roda a keyword depois de uma site ou um teste
###[Setup] or [Teardown]: ignora os da suite. adicionado direto no teste para rodar especificamente para este

Test Setup      Open chrome
#Test Teardown   Close chrome  (RETIRADO MOMENTANEAMENTE)

*** Test Cases ***
Scenario: Buy a product
    Given that the User see a product
    When open the page and add the product in cart and proceed to checkout
    Then buy the product