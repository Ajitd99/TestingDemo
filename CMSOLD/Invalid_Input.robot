*** Settings ***
Library      SeleniumLibrary
Resource     ../Resoures/CMSkeyword.robot
Library       DataDriver       ../TestData/CMS-Login-Data.xlsx      sheet_name=Sheet1
Test Setup         Open My Browser
Test Teardown      Close Browser
Test Template       Invalide Login

*** Test Cases ***
Invalid Input Login Test

*** Keywords ***
Invalide Login

           sleep        3seconds
           [Arguments]       ${email}        ${password}
           Enter Email             ${email}
           sleep        1seconds
           Enter Password          ${password}
           sleep        1seconds
           Click on Sign Button

