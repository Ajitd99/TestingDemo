*** Settings ***
Library        SeleniumLibrary
Variables      ../PageObject/Locators.py

*** Variables ***
${browser}      chrome
${CMSURL}       https://cms-staging.oneyou.io/auth/login
${APP_URL}      https://cms-staging.oneyou.io/dashboard

*** Keywords ***
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

Enter Your Email
      [Arguments]      ${email1}
       input text      ${txt_recovryemail}       ${email1}

Send Email
      click button      ${sub_sendemail}

Click To Login Link
       click element     ${back_login}