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
    
add to product in cart and proceed to checkout 
    #Clicar em "ADD TO CART" no produto.
    Click Element                        xpath=//*[@id="center_column"]/ul/li/div/div[2]/div[2]/a[1]
   
    #SUMMARY   
    Wait Until Element Is Visible        xpath=//*[@id="layer_cart"]/div[1]/div[1]/h2/i[@class="icon-ok"]
    Click Link                            xpath=//*[@id="layer_cart"]/div[1]/div[2]/div[4]/a
    Wait Until Element Is Visible        xpath=/html/body/div/div[2]/div/div[3]/div/p[2]/a[1]
    Click Element                        xpath=/html/body/div/div[2]/div/div[3]/div/p[2]/a[1]

    #SIGNIN
    Wait Until Element Is Visible        css=#login_form > h3        
    Input Text                           id=email                ${USUARIO}
    Input Text                           id=passwd               ${SENHA}
    Click Element                        id=SubmitLogin

    #ADDRESS
    Wait Until Element Is Visible        css=#center_column > h1 
    Click Element                        xpath=//*[@id="center_column"]/form/p/button

    #SHIPPING
    Wait Until Element Is Visible        css=#carrier_area > h1
    Click Element                        id=cgv
    Click Element                        name=processCarrier

    #PAYMENT
    Wait Until Element Is Visible        css=#center_column > h1
    Click Element                        xpath=//*[@id="HOOK_PAYMENT"]/div[1]/div/p/a
    

buy the product  
    #Confirm Order
    Click Element                        xpath=//*[@id="cart_navigation"]/button
      
    #VALIDATE
    Wait Until Element Is Visible       xpath=//*[@id="center_column"]/div/p/strong
    Element Text Should Be         xpath=//*[@id="center_column"]/div/p/strong        Your order on My Store is complete.
    

    #Close chrome
        #Close Browser