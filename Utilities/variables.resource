*** Variables ***
${url}    https://credor-app.azurewebsites.net/
${admin-user}    admin@credor.com
${admin-password}    Excel@123
${investor-user}    maheswari.mahendran@excelenciaconsulting.com
${invalid-investor-user}    maheswar.mahendran@excelenciaconsulting.com
${investor-password}    Excel@1234
${invalid-investor-pwd}    Excel@12    
${case-sensitive-investor-password}    excel@1234
${browser}    Chrome

# Web Elements
${login_email}    //input[@id='login_email']
${login_password}    //input[@id='login_password']
${login_submit}    //button[@id='login_submit']
${logout_dropdown}    //a[@id='navbarDropdown']
${logout_click}    //div[@class='nav-item dropdown show']//a[2]
${pop-up_cancel}    //button[normalize-space()='Cancel']
${toast_message}    //div[@id='toast-container']
${password_required}    //div[contains(text(),'Password is required')]
${username_required}    //div[contains(text(),'Username is required')]
${my_account_dropdown}    //a[@id='navbarDropdown']
${my_account_click}    //app-header/nav[1]/div[2]/div[3]/div[1]/a[1]
${profiles}    //li[contains(text(),'Profiles')]
${add_new_profile}    //button[@id='profile_addnewprofile']
${choose_profile_dropdown}    //select[@id='profile_pp_chooseprofile']
${Individual_first_name}    //input[@id='profile_pp_if_firstname']
${Individual_last_name}    //input[@id='profile_pp_if_lastname']
${Individual_address_feild_one}    //input[@id='profile_pp_if_stadds1']
${Individual_address_feild_two}    //input[@id='profile_pp_if_stadds2']
${Individual_city}    //input[@id='profile_pp_if_city']
${Individual_select_state}    //select[@id='profile_pp_if_province']
${Individual_Zipcode}    //input[@id='profile_pp_if_zipcode']
${distribution_method_dropdown}    //select[@id='profile_pp_Distributionmethod']
${check_incare_of}    //input[@id='profile_pp_cf_incareof']
${check_address_one}    //input[@id='profile_pp_cf_stadds1']
${check_address_two}    //input[@id='profile_pp_cf_stadds2']
${check_city}    //input[@id='profile_pp_cf_city']
${check_dis_state}    //select[@id='profile_pp_cf_province']
${check_dis_zipcode}    //input[@id='profile_pp_cf_zipcode']
${cancel_add_new_profile}    //button[@id='profile_pp_cf_cancel mt-3']
