*** Settings ***

Documentation     A resource file with reusable keywords and variables for seleniumeasy screen

Resource    ../common/common-variables.robot
Resource         ../common/data.robot

*** Keywords ***
Initial Setup
    [Arguments]    ${browser}
    Open Browser   ${URL}   ${browser}
    Set Window Size    ${WIDTH}     ${HEIGHT}

Close test browser
    Close all browsers

Configure browser
    Close all browsers

inserting values on input field
    [Arguments]     ${input_field}     @{values}
   :FOR  ${value}  IN   @{values}
   \    Insert Information On Field                     ${input_field}    ${value}

inserting values on input field 1 using data
     [Arguments]     ${input_field}
     Insert Information On Field     ${input_field}    ${FOO1}
     Insert Information On Field     ${input_field}    ${BAR1}
     Insert Information On Field     ${input_field}    ${FOO2}
     Insert Information On Field     ${input_field}    ${BAR2}
     Insert Information On Field     ${input_field}    ${FOO3}
     Insert Information On Field     ${input_field}    ${BAR3}
     Insert Information On Field     ${input_field}    ${FOO4}
     Insert Information On Field     ${input_field}    ${BAR4}

inserting values on input field 2 using data
    [Arguments]     ${input_field}
    Insert Information On Field     ${input_field}    ${FOO11}
    Insert Information On Field     ${input_field}    ${BAR11}
    Insert Information On Field     ${input_field}    ${FOO22}
    Insert Information On Field     ${input_field}    ${BAR22}
    Insert Information On Field     ${input_field}    ${FOO33}
    Insert Information On Field     ${input_field}    ${BAR33}
    Insert Information On Field     ${input_field}    ${FOO44}
    Insert Information On Field     ${input_field}    ${BAR44}

Insert Information On Field
   [Arguments]    ${input_field}    ${value}
   Wait Until Element Is Visible    ${input_field}    ${TIME_SLEEP}
   Clear Element Text               ${input_field}
   Input Text                       ${input_field}    ${value}
