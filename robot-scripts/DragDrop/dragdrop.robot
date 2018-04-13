
*** Settings ***

Documentation    A resource file with reusable keywords and variables.

Library          Selenium2Library

*** Variable ***
${BROWSER_1}     Chrome
${BROWSER_2}     Firefox
${URL}           http://the-internet.herokuapp.com/drag_and_drop
${URL2}          http://the-internet.herokuapp.com/dropdown


*** Test Case ***
drop e down
    Open Browser                                 ${URL}                                 ${BROWSER_2}
    Drag And Drop	css:#column-a	css:#column-b
   #Drag And Drop By Offset    css:#column-a	     -150      0

Dropdown List
    Open Browser                                 ${URL2}                                ${BROWSER_2}
    ${valor} =                                   Get Selected List Value                css=#dropdown
                    
    Click Element                                css=#dropdown
    Mouse Over                                   css=#dropdown > option:nth-child(2)
    Mouse Over                                   css=#dropdown > option:nth-child(3)
    Click Element                                css=#dropdown > option:nth-child(3)
