*** Settings ***

Documentation    A resource file with reusable keywords and variables.

Library          Selenium2Library
Resource         ../common/g1-variables.robot

*** Keywords ***
Abra o ${BROWSER} na página <${URL}>
    Open Browser                        ${URL}                                           ${BROWSER}

Clique no menu
    Wait Until Page Contains Element    css=#header-produto .menu-button
    Mouse Over                          css=#header-produto .menu-button
    Mouse Out                           css=#header-produto .menu-button
    Mouse Over                          css=#header-produto .menu-button
Selecione a seção ${SECAO_01}
    Sleep                               1s
    Mouse Over                          css=#menu-1-na-tv .a.menu-item-link
    Mouse Over                          css=#menu-1-todas-as-regioes a.menu-item-link
    Mouse Over                          css=#menu-1-na-tv .a..menu-item-link
Verifique se as subseções foram exibidas
    Page Should Contain                 ${TITULO_SECAO_01}
Clique na subseção ${SUB_SECAO_01}
    Click Element                       ${SUB_SECAO_01}
Verique se a página da subseção foi aberta
    Location Should Be                  http://g1.globo.com/fantastic/