*** settings ***
Resource    ../resources/Resource.robot

### SETUP: Executa keyword antes da suíte (Suite Setup) ou antes de um teste (Test Setup)
#Test Setup          Abrir navegador
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

Caso de teste 03: Listar Produtos
  Acessar página home do site
  Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
  Clicar na sub categoria "Summer Dresses"

Caso de teste 04: Adicionar Produtos no Carrinho
  Acessar página home do site
  Digitar o nome de produto "t-shirt" no campo de pesquisa
  Clicar no botão de pesquisa
  Clicar no botão "Add to cart" do produto
  Clicar no botão "Proceed to checkout"
