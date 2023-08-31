*** Settings ***
Library      SeleniumLibrary
Resource     ../Resoures/CMSkeyword.robot
Library       DataDriver       ../TestData/CMS-Invalid-LoginData.xlsx
Suite Setup         Open My Browser
Suite Teardown      Close Browser
Test Template       Invalide Login


*** Test Cases ***
CMS Invalide Login Test

*** Keywords ***
Invalide Login

           sleep        3seconds
           [Arguments]       ${email}        ${password}
           Enter Email             ${email}
           Enter Password          ${password}
           Click on Sign Button
           #Dashboard page should be visible
