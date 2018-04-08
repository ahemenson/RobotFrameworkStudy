*** Settings ***

Documentation    A resource file with reusable keywords and variables.

Library          Selenium2Library
Resource    ../common/amazon-variables.robot

*** Keywords ***
Abra o ${BROWSER} na página <${URL}>
   Open Browser  ${URL}  ${BROWSER}
 
Digite ${PRODUTO_BUSCADO_01} no campo de busca
    Input Text      twotabsearchtextbox      ${PRODUTO_BUSCADO_01}      
 
Clicar no botão pesquisar
    Click Element       css=.nav-input 

Verifique se a busca retornou o resultado esperado
    Page Should Contain    results for "${PRODUTO_BUSCADO_01}"

Clique no produto listado
    Click Link     css=#result_1 a.s-access-detail-page

Verifique se a página do produto foi exibida
    Wait Until Page Contains        Back to search results for "${PRODUTO_BUSCADO_01}"

Adicione o produto ao carrinho
    Click Button                id=add-to-cart-button

Verifique se o produto foi adicionado ao carrinho
    Wait Until Page Contains    ${MENSAGEM_PRODUTO_ADD_CARRINHO}

Feche o navegador
    Close Browser
