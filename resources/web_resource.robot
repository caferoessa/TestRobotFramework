***Settings***
Documentation   Template file for Web scenarios.

Library         SeleniumLibrary

*** Variables ***
${WEBPAGE}       http://www.juliodelima.com.br/taskit/
${LOGIN}         id=Sign in
${LINKSIGNIN}    partial link=Sign in        

*** Keyword ****
Open chrome
    Open Browser            ${WEBPAGE}     chrome
Close chrome
    Close Browser

that the User see SignIn
    Wait Until Element Is Visible        ${LOGIN}
 #  Click Element                        ${LOGIN}
    Click Element                        ${LINKSIGNIN}