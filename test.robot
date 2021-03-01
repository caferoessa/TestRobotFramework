*** Settings ***

Library         SeleniumLibrary

*** Variables ***
${OUTLOOK_WEBPAGE}          https://outlook.office365.com/
${BROWSER}                  chrome

*** Keywords ***
### Setup e TearDow ###
Open chrome
    Open Browser            ${OUTLOOK_WEBPAGE}      chrome
    
Close chrome
    Close Browser