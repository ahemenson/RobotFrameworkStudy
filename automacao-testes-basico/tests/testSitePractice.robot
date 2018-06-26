*** settings ***
Import Library    SeleniumLibrary

*** variables ***
$(URL)    http://automationpractice.com
$(BROWSER)    chrome

*** test case ***
Caso de teste 01: Pesquisar Produto Existente
  Acessar página home do site
  Conferir se a página home foi exibido
  Digitar o nome do produto no campo de pesquisa
  Clicar no botão de pesquisa
  Conferir se o produto foi listado em resultados

Caso de teste 02: Pesquisar Produto Não Existente
  Acessar página home do site
  Conferir se a página home foi exibido
  Digitar o nome do produto inexistente no campo de pesquisa
  Clicar no botão de pesquisa
  Conferir mensagem de erro em resultados

*** Keywords ***
