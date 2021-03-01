***Settings***
Documentation   Template file for Web scenarios.

Library         SeleniumLibrary

*** Variables ***
${WEBPAGE}        https://docs.servicenow.com/bundle/paris-application-development/page/build/applications/task/setup-workspace.html
${LOGIN}          id=login

*** Keyword ****
Open chrome
    Open Browser            ${WEBPAGE}     chrome
Close chrome
    Close Browser

that the User see Login
    Wait Until Element Is Visible         ${LOGIN}
    Click Element                         ${LOGIN}
