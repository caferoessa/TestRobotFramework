***Settings***
Documentation   Template file for Web scenarios.

Library         SeleniumLibrary

*** Variables ***
${WEBPAGE}       http://automationpractice.com/index.php
${LOGIN}         id=Sign in
${SEARCHPAGE}    id=searchbox
${PRODUTO}       blouse
${USUARIO}       teste@test.net
${SENHA}         123456


*** Keyword ****
Open chrome
    Open Browser                        ${WEBPAGE}                    chrome


that the User see a product
    Wait Until Element Is Visible        ${SEARCHPAGE}
    Input Text                           name=search_query            ${PRODUTO}
    Click Element                        name=submit_search

open the page 
    Wait Until Element Is Visible        css=#center_column > h1  
    
add to product in cart  
    #Clicar em "ADD TO CART" no produto.
    Click Element                        xpath=//*[@id="center_column"]/ul/li/div/div[2]/div[2]/a[1]
    #Clicar em Proceder com a compra.  
    Wait Until Element Is Visible        xpath=//*[@id="layer_cart"]/div[1]/div[1]/h2/i[@class="icon-ok"]
    Click Link                            xpath=//*[@id="layer_cart"]/div[1]/div[2]/div[4]/a

proceed to checkout
    Wait Until Element Is Visible        xpath=//*[@id="center_column"]/p[2]/a[1]/span/text()
    Click Link                            xpath=//*[@id="center_column"]/p[2]/a




#Then buy the product
 

#Close chrome
    #Close Browser