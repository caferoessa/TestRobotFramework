*** Settings ***

Library         SeleniumLibrary

*** Variables ***
${WEBPAGEAUTOMATION}          http://automationpractice.com/index.php
${BROWSER}               chrome

*** Keywords ***
### Setup e TearDow ###
Open chrome
    Open Browser            ${WEBPAGEAUTOMATION}      chrome
    
Close chrome
    Close Browser