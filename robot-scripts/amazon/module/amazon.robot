*** Settings ***

Documentation    A resource file with reusable keywords and variables.

Library          Selenium2Library
Resource    ../pageobject/amazon-resources.robot
Resource    ../common/amazon-variables.robot

*** Test Case ***
User must sign in to check out
    [Documentation]             this is some info about test
    [Tags]                      Smoke
    Abra o ${BROWSER_1} na página <${URL}>
    Digite ${PRODUTO_BUSCADO_01} no campo de busca
    Clicar no botão pesquisar
    Verifique se a busca retornou o resultado esperado
    Clique no produto listado
    Verifique se a página do produto foi exibida
    Adicione o produto ao carrinho
    Verifique se o produto foi adicionado ao carrinho
    Feche o navegador


   






