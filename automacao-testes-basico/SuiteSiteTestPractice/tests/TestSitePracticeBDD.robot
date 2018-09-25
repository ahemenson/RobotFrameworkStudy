*** Settings ***
Library     Selenium2Library

*** Variables ***
${URL}      http://automationpractice.com/index.php
${BROWSER}      chrome

*** Test Case ***
Cenário-01: Pesquisar Produto Existente
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" deve ser listado na página de resultados da busca
    
Cenário-02: Pesquisar Produto Inexistente
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "ItemInexistente"
    Então a página deve emitir uma mensagem de erro
        

*** Keywords ***
