*** Settings ***

Documentation    A test suite for seleniumeasy screen.

Library          Selenium2Library
Library          Collections
Library          String
Library          BuiltIn

Resource         ../pageobject/seleniumeasy-resources.robot
Resource         ../common/seleniumeasy-variables.robot

Test Teardown    Close test browser

*** Test Cases ***
# CLOUDUI-2665: Validate insert a special character in the search field
CLOUDUI-2665
  #  :FOR  ${browser}  IN   @{BROWSERS}
  #      Initial Setup    ${browser}

    :FOR  ${browser}  IN  @{BROWSERS}
    \    Initial Setup    ${browser}


