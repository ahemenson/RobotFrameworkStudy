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
    Open Browser    http://www.amazon.com       ${BROWSER_2}
    Input Text      twotabsearchtextbox     Ferrari 458
    Click Element       css=.nav-input
    Wait Until Page Contains        results for "Ferrari 458"
    Click Link      css=#result_1 a.s-access-detail-page
    Wait Until Page Contains    Back to search results for "Ferrari 458"
    Click Button    id=add-to-cart-button
    Wait Until Page Contains    Added to Cart
    Sleep   1s    
    Close Browser




