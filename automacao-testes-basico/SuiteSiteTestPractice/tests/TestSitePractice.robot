*** Settings ***
Resource    ../resource/Resource.robot

### SETUP: Executa keyword antes da suíte (Suite Setup) ou antes de um teste (Test Setup)
Test Setup          Abrir navegador
### TEARDOWN: Executa keyword depois de uma suíte (Suite Teardown) ou depois de um teste (Test Teardown)
Test Teardown       Fechar navegador

*** Variables ***


*** Test Case ***
CT-01: Pesquisar Produto Existente
    Acessar página home do site
    Conferir se a página home foi exibida
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "Blouse" foi listado no site

CT-02: Pesquisar Produto Inexistente
    Acessar página home do site
    Conferir se a página home foi exibida
    Digitar o nome do produto "ItemInexistente" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir mensagem de erro emitida

*** Keywords ***
