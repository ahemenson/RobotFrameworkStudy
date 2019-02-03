*** Settings ***

Documentation    A test suite for a poc test.

Library          Selenium2Library
Library          Collections
Library          String
Library          BuiltIn

Resource         ../pageobject/PocAutomation-resources.robot
Resource         ../common/common-variables.robot
Resource         ../common/data.robot


Test Teardown    Close test browser

*** Test Cases ***             VALOR
# teste usando laço de repetição FOR
# test-Data1
#     :FOR  ${browser}  IN  @{BROWSERS}
#     \    Initial Setup    ${browser}
#     \    inserting values on input field 1 using data    ${INPUT_FIELD}
#     \    inserting values on input field 1 using data    ${INPUT_FIELD2}
#
# test-Data2
#     :FOR  ${browser}  IN  @{BROWSERS}
#     \    Initial Setup    ${browser}
#     \    inserting values on input field 1 using data    ${INPUT_FIELD}
#     \    inserting values on input field 1 using data    ${INPUT_FIELD2}
#
# test-Data3
#     :FOR  ${browser}  IN  @{BROWSERS}
#     \    Initial Setup    ${browser}
#     \    inserting values on input field 1 using data    ${INPUT_FIELD}
#     \    inserting values on input field 1 using data    ${INPUT_FIELD2}
#
# test-Data4
#     :FOR  ${browser}  IN  @{BROWSERS}
#     \    Initial Setup    ${browser}
#     \    inserting values on input field 1 using data    ${INPUT_FIELD}
#     \    inserting values on input field 1 using data    ${INPUT_FIELD2}
#
# test-Data5
#     :FOR  ${browser}  IN  @{BROWSERS}
#     \    Initial Setup    ${browser}
#     \    inserting values on input field 1 using data    ${INPUT_FIELD}
#     \    inserting values on input field 1 using data    ${INPUT_FIELD2}

test-Data1
    Initial Setup    ff
    inserting values on input field 1 using data    ${INPUT_FIELD}
    inserting values on input field 2 using data    ${INPUT_FIELD2}

test-Data2
    Initial Setup    ff
    inserting values on input field 1 using data    ${INPUT_FIELD}
    inserting values on input field 2 using data    ${INPUT_FIELD2}

test-Data3
    Initial Setup    ff
    inserting values on input field 1 using data    ${INPUT_FIELD}
    inserting values on input field 2 using data    ${INPUT_FIELD2}

test-Data4
    Initial Setup    ff
    inserting values on input field 1 using data    ${INPUT_FIELD}
    inserting values on input field 2 using data    ${INPUT_FIELD2}
