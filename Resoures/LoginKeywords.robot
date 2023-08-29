*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObject/Locators.py

*** Keywords ***
Open My Browser
     [Arguments]    ${siteUrl}      ${browser}
     open browser   ${siteUrl}      ${browser}
     maximize browser window

Enter UserName
      [Arguments]    ${username}
      input text     ${loginusername}    ${username}

Enter Password
       [Arguments]    ${password}
       input text     ${loginpassword}     ${password}

Click login Button
       click button     ${loginbutton}

Verify Sucessfully Login
       title should be      My account – Boxeswala

Close My Browsers
       close all browsers






