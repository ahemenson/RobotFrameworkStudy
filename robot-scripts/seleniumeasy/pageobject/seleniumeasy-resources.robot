*** Settings ***

Documentation     A resource file with reusable keywords and variables for seleniumeasy screen

Resource    ../common/seleniumeasy-variables.robot

*** Keywords ***
Initial Setup
    [Arguments]    ${browser_information}    
    Open Browser    ${URL01}   ${browser_information}
    Set Window Size    ${WIDTH}     ${HEIGHT}
    Sleep     1s
    Wait Until Element Is Visible          select-demo
    Click Element    select-demo

Close test browser
    Close all browsers
    
