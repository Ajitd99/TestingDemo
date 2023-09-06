*** Settings ***
Library        SeleniumLibrary
Variables      ../PageObject/Locators.py

*** Variables ***
${browser}      chrome
${CMSURL}       https://cms-staging.oneyou.io/auth/login
${APP_URL}      https://cms-staging.oneyou.io/dashboard
${reserpassword}    https://cms-staging.oneyou.io/auth/reset-password?code=gAAAAABk92C58EBaC1bzOpRXdwboRJzyx7swaLfJBAVujIrFgYqt06VJATbhIz4_Or5dtWypegF_Q60aYYsvgRozBn40u6u7ye9TXxvu9W2erxVXzESfOowM548Tcss1jdK966VFZG28spHuM1uMB-QbA3KhpJMaJMotN3prCFoCPHfdW7p9TH8Yeef-jBgdjZPEwdam9O3tnZ4oV84CuZv8mbuIAl5rSZSHa-hRwt29mvLadzw_6FIqzHRGf24o3YCnwE70OIbq

*** Keywords ***

#login
Open My Browser
      open browser      ${CMSURL}       ${browser}
      maximize browser window
      set selenium speed        0seconds

Reopen Browser
       Open Browser    ${APP_URL}    ${browser}
       maximize browser window

Close All Browser
       close all browsers

Enter Email
      [Arguments]     ${email}
      input text      ${txt_Username}      ${email}

Enter Password
      [Arguments]       ${password}
      input text        ${txt_password}      ${password}

Click on Sign Button
      click button      ${submit_button}

Dashboard page should be visible
          Page Should Contain             Dashboard

Browse Back
        Go Back

Hover on logout section
     mouse over     ${hover_logoout}

Logout Dashboard
       click element      ${logout_button}

Click link on Forgot Password
       click element        ${forgot_password}

#Forget Password
Enter Your Email
      [Arguments]      ${email1}
       input text      ${txt_recovryemail}       ${email1}

Send Email
      click button      ${sub_sendemail}

Click To Login Link
       click element     ${back_login}

#Reset Password
Open Browser for Reset Password
       Open Browser    ${reserpassword}      ${browser}
       maximize browser window

Enter New Password
      [Arguments]      ${new-password}
      input text       ${new_password}       ${new-password}

Enter Confirm Password
      [Arguments]      ${Confirm-password}
      input text       ${confirm_password}       ${Confirm-password}

Confirm Password
      click button      ${sub_confirmpassword}

#Dashboard Section
Select 14 days Graph Data
       click element        ${sel_graph14}

Select stress Health
       click element        ${sel_Stress_Health}

Select 21 days Graph Data
       click element        ${sel_21daysdata}

Select 7 days Graph Data
       click element        ${sel_7daysdata}

Select Mood
      click element         ${sel_Mood}

Select Physical Activity
      click element         ${sel_Physical_Activity}

Select Goal
     click element          ${Sel_goal}

Select Badges
      click element         ${Sel_badges}

Close Badges
       click element        ${Cls_badges}

# People Section
Click on People section
      click element         ${Sel_peoplesection}

Select Checkbox Item
      [Arguments]       ${item}
      select checkbox    ${Sel_peoplecheckbox}

Move Mouse fron people
     mouse over     ${move_mousePeople}

Select Search Bar
      [Arguments]     ${search}
      input text      ${sel_search}      ${search}

Clear Search Box
#       [Arguments]       ${search}
       Clear Element Text     ${sel_search}

Select Name
      click element         ${sel_name}

Click on Search Icon
      click element         ${Click_searchicon}

Select Search checkbox
       [Arguments]           ${item1}
       select checkbox       ${Select_checkbox}

Close Search Icon
      click element         ${Click_searchicon}

Click on Import
      click element         ${sel_import}

Cancle to Upload File
       click element        ${cancel_file}

Upload the File
      [Arguments]       ${upload}
      Choose File       ${upload_file}       ${upload}

#Staff Section
Click on Staff section
      click element         ${Staff_section}

Select Search checkbox1
       [Arguments]           ${item2}
       select checkbox       ${Sel_checkbox1}

Click to Add Staff
       click element        ${Click_AddStaff}

Enter Staff Name
       [Arguments]       ${staffname}
       input text        ${txt_addstaffName}       ${staffname}

Enter Staff Email
       [Arguments]       ${staffemail}
       input text        ${text_staffemail}       ${staffemail}

Select Cancel
       click button       ${sel_cancel}

Select Save
       click button       ${sel_save}

#Reports
Click on Report Section
     click element         ${click_Report}

Select Days
      [Arguments]      ${Dropreport}
      select from list by label      ${Dropdown_report}     ${Dropreport}

MouseOver on Number Of Users
     mouse over     ${mouseover_noofuser}

Select View
      [Arguments]      ${view}
      select from list by label      ${Sel_per_metrics}     ${view}

Page title is
      [Arguments]          ${titlereport}
      Element Should Contain     ${ele_reports}       ${titlereport}

Graph title is
      [Arguments]         ${titleAUF}
      Element Should Contain     ${ele_auf}    ${titleAUF}

Piechart title is
      [Arguments]         ${piechart}
      Element Should Contain     ${ele_piechart}    ${piechart}

Table title is
      [Arguments]         ${tabletitle}
      Element Should Contain     ${ele_tabletitle}    ${tabletitle}


Login the CMS
        sleep       3seconds
        Enter Email     mahesh.j+nike@amazatic.com
        Enter Password   1
        Click on Sign Button
        sleep       5seconds
        Dashboard page should be visible
        sleep       1seconds
        Hover on logout section
        sleep       1seconds

Login the Dashboard
        sleep       3seconds
        Enter Email     mahesh.j@amazatic.com
        Enter Password   OneYou@123
        Click on Sign Button
        sleep       5seconds
#        Element Should Contain      xpath://div[contains(text(),'Logged in Successfully!')]       Logged in Successfully!
#        sleep       5seconds
        Dashboard page should be visible