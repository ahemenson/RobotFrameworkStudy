*** settings ***
Resource    ../resources/Resource.robot

### SETUP: Executa keyword antes da suíte (Suite Setup) ou antes de um teste (Test Setup)
Test Setup          Abrir navegador
### TEARDOWN: Executa keyword depois de uma suíte (Suite Teardown) ou depois de um teste (Test Teardown)
Test Teardown       Fechar navegador

*** test case ***
Cenário 01: Pesquisar Produto Existente
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" deve ser listado na página de resultados de busca

Cenário 02: Pesquisar Produto Não Existente
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "inexistente"
    Então a página deve exibir uma mensagem "No results were found for your search "inexistente""

*** Keywords ***
Dado que estou na página home do site
    Acessar página home do site

Quando eu pesquisar pelo produto "${PRODUTO}"
    Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Clicar no botão pesquisar

Então o produto "${PRODUTO}" deve ser listado na página de resultados de busca
    Conferir se o produto "${PRODUTO}" foi listado em resultados

Então a página deve exibir uma mensagem "${MENSAGEMERRO}"
    Conferir mensagem de erro "${MENSAGEMERRO}" emitida
