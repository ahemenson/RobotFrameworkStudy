*** Settings ***

Documentation    A test suite for a poc test.

Library          Selenium2Library
Library          Collections
Library          String
Library          BuiltIn

Resource         ../pageobject/PocAutomation-resources.robot
Resource         ../common/common-variables.robot

Test Teardown    Close test browser

*** Test Cases ***
# teste usando laço de repetição FOR
# test-for1
#     :FOR  ${browser}  IN  @{BROWSERS}
#     \    Initial Setup    ${browser}
#     \    inserting values on input field    ${INPUT_FIELD}    @{VALUES}
#     \    inserting values on input field    ${INPUT_FIELD2}    @{VALUES}
#
# test-for2
#     :FOR  ${browser}  IN  @{BROWSERS}
#     \    Initial Setup    ${browser}
#     \    inserting values on input field    ${INPUT_FIELD}    @{VALUES}
#     \    inserting values on input field    ${INPUT_FIELD2}    @{VALUES}
#
# test-for3
#     :FOR  ${browser}  IN  @{BROWSERS}
#     \    Initial Setup    ${browser}
#     \    inserting values on input field    ${INPUT_FIELD}    @{VALUES}
#     \    inserting values on input field    ${INPUT_FIELD2}    @{VALUES}
#
# test-for4
#     :FOR  ${browser}  IN  @{BROWSERS}
#     \    Initial Setup    ${browser}
#     \    inserting values on input field    ${INPUT_FIELD}    @{VALUES}
#     \    inserting values on input field    ${INPUT_FIELD2}    @{VALUES}
#
# test-for5
#     :FOR  ${browser}  IN  @{BROWSERS}
#     \    Initial Setup    ${browser}
#     \    inserting values on input field    ${INPUT_FIELD}    @{VALUES}
#     \    inserting values on input field    ${INPUT_FIELD2}    @{VALUES}

test-for1
    Initial Setup    ff
    inserting values on input field    ${INPUT_FIELD}    @{VALUES}
    inserting values on input field    ${INPUT_FIELD2}    @{VALUES2}

test-for2
    Initial Setup    ff
    inserting values on input field    ${INPUT_FIELD}    @{VALUES}
    inserting values on input field    ${INPUT_FIELD2}    @{VALUES2}

test-for3
    Initial Setup    ff
    inserting values on input field    ${INPUT_FIELD}    @{VALUES}
    inserting values on input field    ${INPUT_FIELD2}    @{VALUES2}

test-for4
    Initial Setup    ff
    inserting values on input field    ${INPUT_FIELD}    @{VALUES}
    inserting values on input field    ${INPUT_FIELD2}    @{VALUES2}
