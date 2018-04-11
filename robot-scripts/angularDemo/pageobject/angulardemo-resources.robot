*** Settings ***

Documentation    A resource file with reusable keywords and variables.

Library          Selenium2Library
Resource         ../common/angulardemo-variables.robot

*** Keywords ***
Abra o ${BROWSER} na página <${URL}>
    Open Browser                        ${URL}                                                        ${BROWSER}

Ative o botão check
    Wait Until Page Contains Element    id=mat-checkbox-1
    Click Element                       id=mat-checkbox-1
    Checkbox Should Be Selected         id=mat-checkbox-1

Desative o botão check
    Click Element                       id=mat-checkbox-1
    Checkbox Should Not Be Selected     id=mat-checkbox-1




