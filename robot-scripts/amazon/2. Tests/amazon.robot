*** Settings ***
Documentation    A resource file with reusable keywords and variables.
Library          Selenium2Library

*** Variable ***
${BROWSER_1}     Chrome
${BROWSER_2}     Firefox

*** Test Case ***
User must sign in to check out
    [Documentation]             this is some info about test
    [Tags]                      Smoke
    Open Browser                http://www.amazon.com                                                                                         ${BROWSER_2}
    Input Text                  twotabsearchtextbox                                                                                           Ferrari 458
    Click Element               css=.nav-input
    Wait Until Page Contains    results for "Ferrari 458"
    Click Link                  css=#result_1 a.s-access-detail-page
    Wait Until Page Contains    Back to search results for "Ferrari 458"
    Click Button                id=add-to-cart-button
    Wait Until Page Contains    Added to Cart
    Sleep                       1s
    Close Browser

Click List
    Open Browser                https://www.americanas.com.br/                                                                                ${BROWSER_2}
    Sleep                       1s
    Click Element               id=h_menu
    Sleep                       2s
    Click Element               css=#h_menu .mmn-wrapper .mmn-sidebar .mmn-box-wpr .mmn-pnl-level-1 ul.szr-13 li.sz-1 span.itm-lnk-level-1
    Sleep                       2s
    Click Element               css=#h_menu .mmn-wrapper .mmn-sidebar .mmn-box-wpr .mmn-pnl-level-1 ul.szr-13 li.sz-2 span.itm-lnk-level-1
    Sleep                       2s
    Click Element               css=#h_menu .mmn-wrapper .mmn-sidebar .mmn-box-wpr .mmn-pnl-level-1 ul.szr-13 li.sz-5 span.itm-lnk-level-1
    Sleep                       2s
    Click Element               css=#h_menu .mmn-wrapper .mmn-sidebar .mmn-box-wpr .mmn-pnl-level-1 ul.szr-13 li.sz-1 span.itm-lnk-level-1
    Sleep                       2s
    Click Element               css=li.mmn-item.sz-6 a.itm-lnk-level-3
    Wait Until Page Contains    Motor




