*** Settings ***
Library     Selenium2Library

*** Variables ***
${URL}      http://automationpractice.com/index.php
${BROWSER}      chrome

${PRICE}      $16.51
${QUANTITY_PRODUCT_IN_CART}    1

# Elemento


*** Keywords ***
Abrir navegador
    Open Browser     ${URL}        ${BROWSER}

Fechar navegador
    Close Browser

Acessar página home do site
    Go To   ${URL}
    Title Should be     My Store

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text       id=search_query_top       ${PRODUTO}

Clicar no botão pesquisar
    Click Button    name=submit_search

Conferir se o produto "${PRODUTO}" foi listado em resultados
    Wait Until Element Is Visible    css=#center_column > h1
    Title Should Be    Search - My Store
    Page Should Contain Image     xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img[@src="http://automationpractice.com/img/p/7/7-home_default.jpg"]
    Page Should Contain Link      xpath=//*[@id="center_column"]//a[@class="product-name"][contains(text(),"${PRODUTO}")]

Conferir mensagem de erro "${MENSAGEMERRO}" emitida
  Wait Until Element Is Visible    xpath=//*[@id="center_column"]/p[@class='alert alert-warning']
  Element Text Should Be    xpath=//*[@id="center_column"]/p[@class='alert alert-warning']    ${MENSAGEMERRO}

Passar o mouse por cima da categoria "${CATEGORIA}" no menu principal superior de categorias
  Mouse Over     css=#block_top_menu > ul > li:nth-child(1) > a

Clicar na sub categoria "${SUBCATEGORIA}"
  Wait Until Element Is Visible    css=#block_top_menu > ul > li:nth-child(1) > ul > li:nth-child(2) > ul > li:nth-child(3) > a
  Click Element    css=#block_top_menu > ul > li:nth-child(1) > ul > li:nth-child(2) > ul > li:nth-child(3) > a
  Title Should be    Summer Dresses - My Store

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
  Wait Until Element Is Visible    css=input#search_query_top.search_query
  Input Text    css=input#search_query_top.search_query    ${PRODUTO}

Clicar no botão de pesquisa
  Click Button    css=button.btn.btn-default.button-search

Clicar no botão "Add to cart" do produto
  Wait Until Element Is Visible    css=a.button.ajax_add_to_cart_button
  Click Element     css=a.button.ajax_add_to_cart_button

Clicar no botão "Proceed to checkout"
  Wait Until Element Is Visible    css=a.btn.btn-default.button.button-medium
  Click Element    css=a.btn.btn-default.button.button-medium
  Title Should Be    Order - My Store
  Element Should Contain    css=#product_1_1_0_0 > td.cart_description > p    Faded Short Sleeve T-shirt
  ${value}= 		Get Text		  id=product_price_1_1_0
  Should Be Equal    ${value}    ${PRICE}
  ${Qty}=   Get Value    css=#product_1_1_0_0 > td.cart_quantity.text-center > input[type="hidden"]:nth-child(1)
  Should Be Equal    ${Qty}    ${QUANTITY_PRODUCT_IN_CART}
  ${value}= 		Get Text    id=total_product_price_1_1_0
  Should Be Equal    ${value}    ${PRICE}
