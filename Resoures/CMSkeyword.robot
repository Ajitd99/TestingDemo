*** Settings ***
Library        SeleniumLibrary
Variables      ../PageObject/Locators.py

*** Variables ***
${browser}      chrome
${CMSURL}       https://cms-staging.oneyou.io/auth/login

*** Keywords ***
Open My Browser
      open browser      ${CMSURL}       ${browser}
      maximize browser window
      set selenium speed        0seconds

Close Browser
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








