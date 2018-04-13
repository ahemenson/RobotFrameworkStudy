*** Settings ***

Documentation    A resource file with reusable keywords and variables.

Library          Selenium2Library

*** Variable ***
${BROWSER_1}     Chrome
${BROWSER_2}     Firefox
${URL}           http://automationpractice.com/index.php

*** Test Case ***
drop e down
    Open Browser                     ${URL}                                                      ${BROWSER_2}
    Mouse Over                       css=#block_top_menu > ul > li:nth-child(2) > a
    Mouse Over                       css=#block_top_menu > ul > li:nth-child(1) > a
    Mouse Over                       css=#block_top_menu > ul > li:nth-child(3) > a
    Click Element                    css=#block_top_menu > ul > li:nth-child(3) > a
    Wait Until Element Is Visible    id=ul_layered_id_attribute_group_1
    Select Checkbox                  css=#layered_id_attribute_group_1
    Wait Until Element Is Visible    css=#enabled_filters
    #Element Should Contain (verifica a presença do conteúdo, não importa se estiver incompleto)
    Element Should Contain           css=#enabled_filters > ul:nth-child(2) > li:nth-child(1)    Size: 

    Wait Until Element Is Visible    css=.content_sortPagiBar:nth-child(5)
    #Element Text Should Be (verifica a exatidão do conteúdo)
    Element Text Should Be           css=.bottom-pagination-content > div:nth-child(3)           Showing 1 - 1 of 1 item
