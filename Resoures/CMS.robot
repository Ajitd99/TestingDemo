*** Settings ***
Library        SeleniumLibrary
Variables      ../PageObject/Locators.py


*** Variables ***
${browser}      headlesschrome
${CMSURL}       https://cms-staging.oneyou.io/auth/login
${APP_URL}      https://cms-staging.oneyou.io/dashboard
${reserpassword}     https://cms-staging.oneyou.io/auth/reset-password?code=gAAAAABk8b_qZNlSSChX_-bf9Y9Y9gTQLri-X0ZZUeiU-4iwJTPBzEanbmm9seQWl1rFTzdqaTHY1-Uh1Dzi8a2D6ARA4jRL7I1kmMmZFkmwdXzQ7iDUEVnzNn6QS97NrrU_tS4-VknUkEs9E157mFWa3qEgKsmMIQVJThXw-oSdpw5KyTSDlKFha60II-pofwsOUJGchpps-m0FNIJmWCq-AkzVCNyONvjWd7W8qZwjI129gEiK_bgnuZfOhajaRqxwqbnS0jR3

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