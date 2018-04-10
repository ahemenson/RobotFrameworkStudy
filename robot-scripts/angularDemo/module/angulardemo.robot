*** Settings ***

Documentation    A resource file with reusable keywords and variables.

Library          Selenium2Library
Resource         ../pageobject/angulardemo-resources.robot
Resource         ../common/angulardemo-variables.robot

*** Test Case ***
1: Ative o botão check
    [Documentation]                           this is some info about test
    [Tags]                                    test
    Abra o ${BROWSER_1} na página <${URL}>
    Ative o botão check

2: Desative o botão check
    Desative o botão check

Botao Picker
    Open Browser                              https://material.angular.io/components/datepicker/overview                                                         ${BROWSER_2}
    Click button                              css=div.ng-tns-c21-2:nth-child(2) > mat-datepicker-toggle:nth-child(1) > button:nth-child(1)
    Wait Until Page Contains Element          css=#mat-datepicker-0
    Mouse Over                                css=#mat-datepicker-0 .mat-calendar-content .mat-calendar-body tr.ng-star-inserted:nth-child(2) td:nth-child(1)
    Mouse Over                                css=#mat-datepicker-0 .mat-calendar-content .mat-calendar-body tr.ng-star-inserted:nth-child(2) td:nth-child(2)
    Mouse Over                                css=#mat-datepicker-0 .mat-calendar-content .mat-calendar-body tr.ng-star-inserted:nth-child(2) td:nth-child(3)
    Mouse Over                                css=#mat-datepicker-0 .mat-calendar-content .mat-calendar-body tr.ng-star-inserted:nth-child(2) td:nth-child(4)
    Mouse Over                                css=#mat-datepicker-0 .mat-calendar-content .mat-calendar-body tr.ng-star-inserted:nth-child(2) td:nth-child(5)
    Mouse Over                                css=#mat-datepicker-0 .mat-calendar-content .mat-calendar-body tr.ng-star-inserted:nth-child(2) td:nth-child(6)
    Mouse Over                                css=#mat-datepicker-0 .mat-calendar-content .mat-calendar-body tr.ng-star-inserted:nth-child(2) td:nth-child(7)
    Mouse Over                                css=#mat-datepicker-0 .mat-calendar-content .mat-calendar-body tr.ng-star-inserted:nth-child(3) td:nth-child(1)
    Mouse Over                                css=#mat-datepicker-0 .mat-calendar-content .mat-calendar-body tr.ng-star-inserted:nth-child(3) td:nth-child(2)
    Mouse Over                                css=#mat-datepicker-0 .mat-calendar-content .mat-calendar-body tr.ng-star-inserted:nth-child(3) td:nth-child(3)
    Mouse Over                                css=#mat-datepicker-0 .mat-calendar-content .mat-calendar-body tr.ng-star-inserted:nth-child(3) td:nth-child(4)
    Mouse Over                                css=#mat-datepicker-0 .mat-calendar-content .mat-calendar-body tr.ng-star-inserted:nth-child(3) td:nth-child(5)
    Mouse Over                                css=#mat-datepicker-0 .mat-calendar-content .mat-calendar-body tr.ng-star-inserted:nth-child(3) td:nth-child(6)
    Mouse Over                                css=#mat-datepicker-0 .mat-calendar-content .mat-calendar-body tr.ng-star-inserted:nth-child(3) td:nth-child(7)
    Mouse Over                                css=#mat-datepicker-0 .mat-calendar-content .mat-calendar-body tr.ng-star-inserted:nth-child(4) td:nth-child(1)
    Mouse Over                                css=#mat-datepicker-0 .mat-calendar-content .mat-calendar-body tr.ng-star-inserted:nth-child(4) td:nth-child(1)
    Mouse Over                                css=#mat-datepicker-0 .mat-calendar-content .mat-calendar-body tr.ng-star-inserted:nth-child(4) td:nth-child(1)
    Click Element                             css=#mat-datepicker-0 .mat-calendar-content .mat-calendar-body tr.ng-star-inserted:nth-child(4) td:nth-child(1)
    Element Should Contain                    css=mat-form-field.ng-tns-c21-2               4/15/ 2018
