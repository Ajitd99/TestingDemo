*** Settings ***
Library      SeleniumLibrary
Resource     ../Resoures/CMSkeyword.robot
Library       DataDriver       ../TestData/CMS-Login-Data.xlsx      sheet_name=Sheet1
Suite Setup         Open My Browser
Suite Teardown      Close Browser
Test Template       Invalide Login

*** Test Cases ***
CMS Test Using Invalide Login

*** Keywords ***
Invalide Login

           sleep        3seconds
           [Arguments]       ${email}        ${password}
           Enter Email             ${email}
           Enter Password          ${password}
           Click on Sign Button

