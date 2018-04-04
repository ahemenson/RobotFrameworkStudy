*** Settings ***
Documentation   A resource file with reusable keywords and variables.
Library  Selenium2Library

*** Variable ***
${BROWSER_1}    Chrome
${BROWSER_2}    Firefox


*** Test Case ***
User must sign in to check out
    [Documentation]  this is some info about test
    [Tags]  Smoke
    Open Browser    http://www.amazon.com  ${BROWSER_2}
    Close Browser




