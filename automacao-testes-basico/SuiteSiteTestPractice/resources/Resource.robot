*** Settings ***
Library     Selenium2Library

*** Variables ***
${URL}      http://automationpractice.com/index.php
${BROWSER}      chrome

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
  Element Text Should Be    id=#center_column     ${MENSAGEMERRO}
