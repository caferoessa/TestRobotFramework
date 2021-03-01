***Settings***
Documentation   Template file for Web scenarios.

Library         SeleniumLibrary

Resource        ../resources/web_resource.robot

###SETUP: roda a keyword antes da suite ou antes de um teste
###TEARDOWN: roda a keyword depois de uma site ou um teste
###[Setup] or [Teardown]: ignora os da suite. adicionado direto no teste para rodar especificamente para este

Test Setup      Open chrome
Test Teardown   Close chrome

*** Test Cases ***
Scenario: Open outlook web page
    Given that the User see Login
    