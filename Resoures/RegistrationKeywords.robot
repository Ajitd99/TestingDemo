*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObject/Locators.py

*** Keywords ***

Open My Browser
       [Arguments]   ${SiteUrl}    ${Browser}
       open browser   ${SiteUrl}    ${Browser}
       maximize browser window
       set selenium speed    0seconds

Enter First Name
      [Arguments]      ${fname}
      input text       ${txt_firstname}    ${fname}

Enter Last Name
       [Arguments]    ${lname}
       input text     ${txt_lname}      ${lname}


#Select Marital Status
    # [Arguments]       ${status}
     #Select Radio Button         ${sel_status}          ${status}

Select Country
      [Arguments]    ${country}
      select from list by label    ${sel_country}    ${country}

Select Birth Date Month
      [Arguments]    ${sele_month}
      select from list by label    ${sel_month}    ${sele_month}

Select Birth Date Day
      [Arguments]    ${sele_day}
      select from list by label    ${sel_Day}    ${sele_day}

Select Birth Date year
      [Arguments]    ${sele_year}
      select from list by label    ${sel_year}    ${sele_year}


Phone Number
    [Arguments]     ${phoneno}
    input text      ${txt_phone1}    ${phoneno}

UserName
     [Arguments]    ${username}
     input text     ${txt_user}    ${username}

Email
   [Arguments]   ${email}
   input text    ${txt_email1}     ${email}

Password
   [Arguments]      ${password}
   input text       ${txt_psd}   ${password}

Confirm Password
    [Arguments]   ${conpsd}
    input text    ${txt_cpsd}       ${conpsd}

Click Submit
     click button       ${submit_btn}

Close My Browser
      close all browsers


