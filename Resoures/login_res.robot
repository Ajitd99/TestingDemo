*** Settings ***
Library     SeleniumLibrary
Variables      ../PageObject/Locators.py

*** Variables ***
${login URL}        https://boxeswala.com/my-account/
${browser}          chrome

*** Keywords ***

Open my browser
         open browser       ${login URL}        ${browser}
         maximize browser window
         set selenium speed        1seconds
         execute javascript       window.scrollTo(0,200)

Close Browsers
         close all browsers

Open login page
         go to       ${login URL}

Input username
         [Arguments]        ${username}
         input text     id:username     ${username}

Input password
          [Arguments]      ${password}
           input text      id:password      ${password}

click login button
           click element      xpath://button[contains(text(),'Log in')]

Error message should be visible
           Page Should Contain    login was unsuccessful

Dashboard page should be visible
           Page Should Contain           Dashboard



