*** Settings ***
Documentation                                     A resource file with reusable variables for seleniumeasy screen.

*** Variables ***
################################ Browsers ################################
@{BROWSERS}    chrome    ff

######################## Urls ########################
${URL}      http://demos.jquerymobile.com/1.4.4/textinput/

######################## Browser size configuration ########################
${WIDTH}    1366
${HEIGHT}    768

####################### elements #######################
${INPUT_FIELD}         text-1
${INPUT_FIELD2}         text-3

################### values #######################
${TIME_SLEEP}       60

@{VALUES}      Hello   World   Hello2    World2    Hello3    World3    Hello4    World4
@{VALUES2}      Hello   World   Hello2    World2    Hello3    World3    Hello4    World4
