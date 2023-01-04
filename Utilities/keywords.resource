*** Settings ***
Library    SeleniumLibrary
Resource    variables.resource

*** Keywords ***
App_Launch_KW
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Investor_Login_KW
    Input Text    ${login_email}    ${investor-user}
    Input Password    ${login_password}    ${investor-password}
    Click Element    ${login_submit}   
    Sleep    2     
    Click Element   ${pop-up_cancel}   

Admin_Login_KW
    Input Text    ${login_email}    ${admin-user}    
    Input Password    ${login_password}    ${admin-password}
    Click Element    ${login_submit}   

Logout_KW
    Click Element    ${logout_dropdown}
    Sleep    2      
    Click Element    ${logout_click}


           