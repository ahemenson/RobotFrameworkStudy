*** settings ***
Resource    ../resources/Resource.robot

### SETUP: Executa keyword antes da suíte (Suite Setup) ou antes de um teste (Test Setup)
Test Setup          Abrir navegador
### TEARDOWN: Executa keyword depois de uma suíte (Suite Teardown) ou depois de um teste (Test Teardown)
Test Teardown       Fechar navegador

*** test case ***
Caso de teste 01: Pesquisar Produto Existente
  Acessar página home do site
  Digitar o nome do produto "Blouse" no campo de pesquisa
  Clicar no botão pesquisar
  Conferir se o produto "Blouse" foi listado em resultados

Caso de teste 02: Pesquisar Produto Não Existente
  Acessar página home do site
  Digitar o nome do produto "inexistente" no campo de pesquisa
  Clicar no botão pesquisar
  Conferir mensagem de erro "No results were found for your search "Inexistente"" emitida
