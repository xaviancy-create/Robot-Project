*** Settings ***
Library    SeleniumLibrary
Resource    ../../Utilities/keywords.resource
Resource    ../../Utilities/variables.resource
Suite Setup    Set Screenshot Directory    LOGDIR/Screenshots
Test Setup    Set Selenium Speed    0.3

*** Test Cases ***  
TC_005_login_with_invalid_credentials
   [Tags]    negative
   App_Launch_KW
   Input Text    ${login_email}    ${investor-user}
   Input Password    ${login_password}    ${invalid-investor-pwd}
   Click Element    ${login_submit}
   Wait Until Element Is Visible    ${toast_message}
   ${Info!}=    Get Text    ${toast_message}
   Should Be Equal    ${Info!}    Info!\nInvalid credentials
   Close Browser  
   
TC_006_invalid_username_and_valid_password
    [Tags]    negative
    App_Launch_KW
    Input Text    ${login_email}    ${invalid-investor-user}
    Input Password    ${login_password}    ${investor-password}
    Click Element    ${login_submit}
    Wait Until Element Is Visible    ${toast_message}
    ${Info!}=    Get Text    ${toast_message}
    Should Be Equal    ${Info!}    Info!\nInvalid credentials
    Close Browser
    
TC_007_login_with_valid_username_and_invalid_password
    [Tags]    negative
    App_Launch_KW
    Input Text    ${login_email}    ${investor-user}
    Input Password    ${login_password}    ${invalid-investor-pwd}
    Click Element    ${login_submit}
    Wait Until Element Is Visible    ${toast_message}
    ${Info!}=    Get Text    ${toast_message}
    Should Be Equal    ${Info!}    Info!\nInvalid credentials
    Close Browser
    
TC_008_ login_without_username_and_password
    [Tags]    negative
    App_Launch_KW    
    Click Element    ${login_submit}
    Element Should Be Visible    ${username_required}
    ${usr-req-msg}=    Get Text   ${username_required}
    Should Be Equal    ${usr-req-msg}    Username is required
    Element Should Be Visible    ${password_required}
    ${pwd-req-msg}=    Get Text   ${password_required}
    Should Be Equal    ${pwd-req-msg}    Password is required
    Close Browser