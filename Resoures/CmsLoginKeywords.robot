*** Settings ***
Library   SeleniumLibrary
Variables   ../PageObject/Locators.py

*** Keywords ***

Open My Browser
     [Arguments]    ${loginurl}      ${browser}
     open browser   ${loginurl}      ${browser}
     maximize browser window

Enter Email
       [Arguments]      ${email}
       input text       ${Login_username}   ${email}

Enter Password
        [Arguments]      ${password}
        input text       ${Login_password}      ${password}

Click Signin Button
        click button     ${Sigin_Button}

Verify Sucessfully Login
        title should be     Dashboard ‹ Pinspire Software Training Centre — WordPress

Close My Browsers
        close all browsers

