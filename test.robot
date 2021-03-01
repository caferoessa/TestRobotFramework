*** Settings ***

Library         SeleniumLibrary

*** Variables ***
${WEBPAGEJULIO}          http://www.juliodelima.com.br/taskit/
${BROWSER}                  chrome

*** Keywords ***
### Setup e TearDow ###
Open chrome
    Open Browser            ${WEBPAGEJULIO}      chrome
    
Close chrome
    Close Browser