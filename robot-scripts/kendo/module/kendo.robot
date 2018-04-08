*** Settings ***

Documentation    A test file ....

Library          Selenium2Library
Resource    ../pageobject/kendo-resources.robot
Resource    ../common/kendo-variables.robot

*** Test Cases ***
Customize Kendo T-Shirt Fabric ID 3 And Size Large
    [Tags]    tc01
    Open Browser        ${URL}     ${BROWSER_2}
    Sleep    1s   
    Click Element            css=#tshirt-view span.k-select         
    Sleep    1s
    #Mouse Over            css=#fabric_listbox li.k-item Rib Knit
    Mouse Over            css=#fabric_listbox > li:nth-child(3)
    Sleep    1s
    Mouse Over            css=#fabric_listbox > li:nth-child(4)
    Sleep    1s
    Mouse Over            css=#fabric_listbox > li:nth-child(1)
    Sleep    1s
    Mouse Over            css=#fabric_listbox > li:nth-child(2)
    Sleep    1s
    Mouse Over            css=#fabric_listbox > li:nth-child(3)
    Sleep    1s
    Click Element         css=#fabric_listbox > li:nth-child(3)
    Sleep    1s
    Click Element         css=#tshirt-view > span:nth-child(6) > span > span.k-select
    #Click Element         css=#tshirt-view span.k-select
    Sleep    1s
    Mouse Over            css=#size_listbox > li:nth-child(2)     
    Sleep    1s  
    Mouse Over            css=#size_listbox > li:nth-child(1)
    Sleep    1s
    Mouse Over            css=#size_listbox > li:nth-child(5)
    Sleep    1s
    Mouse Over            css=#size_listbox > li:nth-child(4)
    Sleep    1s
    Click Element         css=#size_listbox > li:nth-child(4)
    Sleep    1s 
    Click Button          id=get   
    Sleep    1s
    Alert Should Be Present    text=Thank you! Your Choice is:Fabric ID: 3 and Size: Large             
     
Customize Kendo T-Shirt Fabric ID 4 And Size 4 Small
    Reload Page
    Sleep    1s   
    Click Element            css=#tshirt-view span.k-select         
    Sleep    1s
    #Mouse Over            css=#fabric_listbox li.k-item Rib Knit
    Mouse Over            css=#fabric_listbox > li:nth-child(3)
    Sleep    1s
    Mouse Over            css=#fabric_listbox > li:nth-child(4)
    Sleep    1s
    Mouse Over            css=#fabric_listbox > li:nth-child(1)
    Sleep    1s
    Mouse Over            css=#fabric_listbox > li:nth-child(2)
    Sleep    1s
    Mouse Over            css=#fabric_listbox > li:nth-child(3)
    Sleep    1s
    Click Element         css=#fabric_listbox > li:nth-child(4)
    Sleep    1s
    Click Element         css=#tshirt-view > span:nth-child(6) > span > span.k-select
    #Click Element         css=#tshirt-view span.k-select
    Sleep    1s
    Mouse Over            css=#size_listbox > li:nth-child(2)     
    Sleep    1s  
    Mouse Over            css=#size_listbox > li:nth-child(1)
    Sleep    1s
    Mouse Over            css=#size_listbox > li:nth-child(5)
    Sleep    1s
    Mouse Over            css=#size_listbox > li:nth-child(1)
    Sleep    1s
    Click Element         css=#size_listbox > li:nth-child(2)
    Sleep    1s 
    Click Button          id=get 
    Sleep    1s
    Alert Should Be Present    text=Thank you! Your Choice is:Fabric ID: 4 and Size: Small                  
    Close Browser  

   






