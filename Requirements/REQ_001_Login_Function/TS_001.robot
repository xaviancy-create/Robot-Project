*** Settings ***
Library    SeleniumLibrary
Resource    ../../Utilities/keywords.resource
Resource    ../../Utilities/variables.resource
Suite Setup    Set Screenshot Directory    LOGDIR/Screenshots
Test Setup    Set Selenium Speed    0.3

*** Test Cases ***
TC_001_login_with_valid_credentials
    [Tags]    positive
    App_Launch_KW
    Input Text    ${login_email}    ${investor-user}
    Input Password    ${login_password}    ${investor-password}
    Click Element    ${login_submit}   
    Sleep    2     
    Click Element   ${pop-up_cancel}
    Logout_KW
    Close Browser
 
TC_002_login_with_password_no_username
   [Tags]    negative
   App_Launch_KW
   Input Text    ${login_email}    ${investor-user}
   Click Element    ${login_submit}   
   Element Should Be Visible    ${password_required}
   ${pwd-req-msg}=    Get Text   ${password_required}
   Should Be Equal    ${pwd-req-msg}    Password is required
   Close Browser

TC_003_login_with_username_no_password
   [Tags]    negative
   App_Launch_KW
   Input Password    ${login_password}    ${investor-password}
   Click Element    ${login_submit}   
   Element Should Be Visible    ${username_required}
   ${usr-req-msg}=    Get Text   ${username_required}
   Should Be Equal    ${usr-req-msg}    Username is required
   Close Browser
   
TC_004_login_with_valid_username_with_valid_password_in_case_sensitive
    [Tags]    negative
    App_Launch_KW
    Input Text    ${login_email}    ${investor-user}
    Input Password    ${login_password}    ${case-sensitive-investor-password}
    Click Element    ${login_submit}
    Wait Until Element Is Visible    ${toast_message}
    ${Info!}=    Get Text    ${toast_message}
    Should Be Equal    ${Info!}    Info!\nInvalid credentials
    Close Browser 
    
TC_005 login_with_valid_username_with_valid_password_in_case_sensitive
    [Tags]    negative
    App_Launch_KW
    Input Text    ${login_email}    ${investor-user}
    Input Password    ${login_password}    ${case-sensitive-investor-password}
    Click Element    ${login_submit}
    Wait Until Element Is Visible    ${toast_message}
    ${Info!}=    Get Text    ${toast_message}
    Should Be Equal    ${Info!}    Info!\nInvalid credentials
    Close Browser 
