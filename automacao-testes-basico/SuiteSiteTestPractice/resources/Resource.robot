*** Settings ***
Library     Selenium2Library

*** Variables ***
${URL}      http://automationpractice.com/index.php
${BROWSER}      chrome

*** Keywords ***
Abrir navegador
    Open Browser     ${URL}        ${BROWSER}

Fechar navegador
    Close Browser