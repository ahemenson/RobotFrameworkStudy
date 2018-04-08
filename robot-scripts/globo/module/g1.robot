*** Settings ***

Documentation    A resource file with reusable keywords and variables.

Library          Selenium2Library
Resource         ../pageobject/g1-resources.robot
Resource         ../common/g1-variables.robot

*** Test Case ***
User must sign in to check out
    [Documentation]                               this is some info about test
    [Tags]                                        Smoke
    Abra o ${BROWSER_2} na página <${URL}>
    Clique no menu
    Selecione a seção ${SECAO_01}
    Verifique se as subseções foram exibidas
    Clique na subseção ${SUB_SECAO_01}
    Verique se a página da subseção foi aberta

Pagina gshow
    Abra o ${BROWSER_1} na página <${URL}>
    Wait Until Page Contains Element              css=#barra-globocom > div > div > ul > li:nth-child(4)
    Click Element                                 css=#barra-globocom > div > div > ul > li:nth-child(4)
    Location Should Be                            https://gshow.globo.com/
    Go Back
    Location Should Be                            ${URL}/
    Click Element                                 css=.barra-itens > li:nth-child(5) > a:nth-child(2)
    Location Should Be                            http://famosos.globo.com/
    Wait Until Page Contains Element              css=#busca-campo
    Click Element                                 css=#busca-campo
    Input Text                                    css=#busca-campo                                          Paolla
    Sleep                                         1s
    Mouse Over                                    css=#busca-padrao > div > ul > li:nth-child(1)
    Sleep                                         0.5
    Mouse Over                                    css=#busca-padrao > div > ul > li:nth-child(2)
    Sleep                                         0.5
    Mouse Over                                    css=#busca-padrao > div > ul > li:nth-child(3)
    Sleep                                         0.5
    Mouse Over                                    css=#busca-padrao > div > ul > li:nth-child(2)
    Sleep                                         0.5
    Mouse Over                                    css=#busca-padrao > div > ul > li:nth-child(1)
    Click Element                                 css=#busca-padrao > div > ul > li:nth-child(1)
    Location Should Be                            http://g1.globo.com/tudo-sobre/paolla-oliveira
















