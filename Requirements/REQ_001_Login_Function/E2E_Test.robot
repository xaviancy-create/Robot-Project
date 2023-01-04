*** Settings ***
Library    SeleniumLibrary
Resource    ../../Utilities/keywords.resource
Resource    ../../Utilities/variables.resource
Suite Setup    Set Screenshot Directory    LOGDIR/Screenshots
Test Setup    Set Selenium Speed    0.3

*** Test Cases ***
Investor_Add_New_Profile
    App_Launch_KW
    Investor_Login_KW
    Click Element    ${my_account_dropdown}
    Click Element    ${my_account_click}    
    Click Element    ${profiles}
    Click Button    ${add_new_profile}
    Click Element    ${choose_profile_dropdown}    
    Select From List By Label    ${choose_profile_dropdown}    Individual          
    Input Text    ${Individual_first_name}    Mohanakrishnan
    Input Text    ${Individual_last_name}    Vijayakumar    
    Input Text    ${Individual_address_feild_one}    Address Line One    
    Input Text    ${Individual_address_feild_two}    Address Line Two
    Input Text    ${Individual_city}    Chennai    
    Click Element    ${Individual_select_state}    
    Select From List By Label    ${Individual_select_state}    California        
    Input Text    ${Individual_Zipcode}    123456789    
    Click Element    ${distribution_method_dropdown}    
    Select From List By Label    ${distribution_method_dropdown}    Check        
    Scroll Element Into View    ${cancel_add_new_profile}
    Input Text    ${check_incare_of}    Nobody    
    Input Text    ${check_address_one}    address one    
    Input Text    ${check_address_two}    address two
    Input Text    ${check_city}    city   
    Click Element    ${check_dis_state}    
    Select From List By Label    ${check_dis_state}    California
    Input Text    ${check_dis_zipcode}    9876    
    Click Button    ${cancel_add_new_profile}
    Logout_KW
    Close Browser
          