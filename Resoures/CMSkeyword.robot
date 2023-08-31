*** Settings ***
Library        SeleniumLibrary
Variables      ../PageObject/Locators.py

*** Keywords ***


Open My Browser
      [Arguments]       ${CMSURL}       ${browser}
      open browser      ${CMSURL}       ${browser}
      maximize browser window
      set selenium speed        1seconds

Enter Email
      [Arguments]     ${email}
      input text      ${txt_Username}      ${email}

Enter Password
      [Arguments]       ${password}
      input text        ${txt_password}      ${password}

Click on Sign Button
      click button      ${submit_button}

Close Browser
       close all browsers







