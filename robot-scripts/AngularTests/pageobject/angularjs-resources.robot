*** Settings ***

Documentation    A resource file with reusable keywords and variables.

Library          Selenium2Library
Resource         ../common/angularjs-variables.robot

*** Keywords ***
Abra o navegador na página
  [Arguments]    ${browser}   ${url_complement}
  ${url}=      Catenate    SEPARATOR=/    ${URL}    ${url_complement}
  Open Browser   ${url}

Selecionar opcao
  [Arguments]    ${seletor}       ${value}
  Wait Until Element Is Visible           ${CARD_Battle_Preferences}
  #Select From List By Value               css=select_container_50 > md-select-menu        ${value}
  Sleep     2
  #Click Element       id=select_49
  #Sleep     1
  Select From List By Value              select_container_50 > md-select-menu        pen

Selecionar opcao aleatoria
  [Arguments]    ${seletor}       ${qt_option}
  ${option}=          Evaluate           random.randint(${LABEL_0}, ${qt_option})	       random
  Log         ${option}
  ${option}=             Convert To String        ${option}
  Log         ${option}
  Select From List By Index          id=month         ${option}
  List Selection Should Be           id=month         ${option}
  
