*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObject/Locators.py

*** Keywords ***

open mybrowser
  [Arguments]     ${url}      ${browser}
  open browser    ${url}      ${browser}
  maximize browser window
  set selenium speed       0seconds

Enter Fname
   [Arguments]    ${fname}
   input text     ${firsname}         ${fname}

Enter Lname
     [Arguments]    ${lname}
     input text     ${lastname}      ${lname}

Enter Address
      [Arguments]    ${address}
      input text     ${txt_address}     ${address}

Enter Email
      [Arguments]    ${emailid}
      input text      ${txt_email}      ${emailid}

Enter Phone Number
      [Arguments]    ${phone}
      input text      ${txt_phone}      ${phone}

Select Gender
       [Arguments]       ${gender}
       Select Radio Button   ${sel_gender}          ${gender}

Select hobbies
       [Arguments]         ${hobbies}
       select checkbox     ${chek_hobby}

Select Skills
      [Arguments]       ${skills}
      select from list by label     ${sel_skills}     ${skills}

Select Country
        [Arguments]    ${country}
        select from list by label          ${sel_ctry}     ${country}

Select Date Of Birth Year
         [Arguments]    ${year}
         select from list by label    ${chose_year}     ${year}

Select Date Of Birth Month
         [Arguments]    ${Month}
         select from list by label    ${chose_month}     ${Month}

Select Date Of Birth Day
         [Arguments]    ${Day}
         select from list by label    ${chose_day}     ${Day}

Enter Password
         [Arguments]        ${password}
          input text        ${txt_password}         ${password}

Enter Confirm Password
         [Arguments]        ${confirm}
         input text         ${txt_confpassword}      ${confirm}

Submit Button
      Click button    ${sub_btn}

close mybrowser
     close all browsers