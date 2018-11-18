*** Settings ***

Documentation    A resource file with reusable keywords and variables.

Library          Selenium2Library
Resource         ../pageobject/angularjs-resources.robot
Resource         ../common/angularjs-variables.robot

Test Teardown    Close Browser

*** Test Case ***
Test Seletor 1
    [Documentation]                               this is some info about test
    [Tags]                                        Seletores
    Abra o navegador na página      ${BROWSER_2}        ${URL_SELETOR}
    Selecionar opcao        ${SELETOR}          Axe

Test Seletor 2
    [Documentation]                               this is some info about test
    [Tags]                                        Seletores
    Open Browser                                  https://pt-br.facebook.com/
    Sleep        2
    Select From List By Value             id=month             1
    Sleep        2
    Select From List By Value             id=month             10
    Sleep        2
    Select From List By Index             id=month             0
    Sleep        2
    Select From List By Index             id=month             5
    Sleep       2
    Select From List By Index           id=year              30
    Sleep        2
    Select From List By Value             id=year              1986]

Get List of selector
    [Documentation]                               this is some info about test
    [Tags]                                        Seletores
    Open Browser                                  https://pt-br.facebook.com/
    Sleep        2
    ${items}=          Get List Items               id=month
    Log       ${items}
    Should Be Equal      ${items}       ${LIST_ITENS}
    ${len}=            Get Length       ${LIST_ITENS}
    Log         ${len}
    ${num}=          Evaluate           random.choice(${LIST_ITENS})         random
    Log         ${num}
    Sleep         2
    Select From List By Value             id=month              ${num}

TC: Selecionar Opcao Aleatoria
  Open Browser      https://pt-br.facebook.com/      ${BROWSER_2}
  #List Should Have No Selections                   id=month
  Selecionar opcao aleatoria         id=month      ${LABEL_12}
  #Selecionar opcao aleatoria         id=month      ${LABEL_12}
  #Selecionar opcao aleatoria         id=month      ${LABEL_12}
  #Selecionar opcao aleatoria         id=month      ${LABEL_12}

TC: Selecionar Radio Aleatorio
  Open Browser      https://pt-br.facebook.com/      ${BROWSER_2}
  Sleep        3
  ${num}=          Evaluate           random.randint(${LABEL_0}, 2)     random
  Log     ${num}
  ${value}=            Get From List      @{RADIO_VALUES}         ${num}
  Log     ${value}
  Select Radio Button           sex             ${value}

TC: Selecionar CheckBox
  Open Browser         http://automationpractice.com/index.php?id_category=3&controller=category#/        ${BROWSER_1}
  Sleep        5
  Wait Until Element Is Visible         id=layered_block_left
  Checkbox Should Not Be Selected     id=layered_category_4
  Select Checkbox            id=layered_category_4
  Checkbox Should Be Selected         id=layered_category_4
  Sleep        2
  Unselect Checkbox                id=layered_category_4
  Checkbox Should Not Be Selected     id=layered_category_4

  Select Checkbox      id=layered_id_attribute_group_2
  Select Checkbox      id=layered_id_attribute_group_1
  Select Checkbox      id=layered_id_attribute_group_3
  Unselect Checkbox    id=layered_id_attribute_group_2
  Checkbox Should Be Selected         id=layered_id_attribute_group_1
  Checkbox Should Be Selected         id=layered_id_attribute_group_3
  Checkbox Should Not Be Selected     id=layered_id_attribute_group_2
