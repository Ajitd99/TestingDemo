*** Settings ***
Library     SeleniumLibrary
Resource    ../Resoures/login_res.robot
Library        DataDriver       ../TestData/login.xlsx
Suite Setup     Open my browser
Suite Teardown      Close Browsers
Test Template       Login Test

*** Test Cases ***
LoginTestwithExcel using        ${username}  ${password}


*** Keywords ***
Login Test

         [Arguments]        ${username}        ${password}
         Input username     ${username}
         Input Password     ${password}
         click login button
         #Error message should be visible
         #Dashboard page should be visible

