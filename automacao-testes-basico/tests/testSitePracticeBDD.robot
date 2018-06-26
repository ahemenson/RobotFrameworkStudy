*** settings ***
Import Library    SeleniumLibrary

*** variables ***
$(URL)    http://automationpractice.com
$(BROWSER)    chrome

*** test case ***
Cenário 01: Pesquisar Produto Existente
  Dado que estou na página home do site
  Quando eu pesquisar pelo produto
  Então o produto deve ser listado na página de resultados de busca

Cenário 02: Pesquisar Produto Não Existente
  Dado que estou na página home do site
  Quando eu pesquisar pelo produto inexistente
  Então a página deve exibir uma mensagem

*** Keywords ***
