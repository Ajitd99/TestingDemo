*** Settings ***
Library   SeleniumLibrary
Library       DataDriver       ../TestData/CMS-Login-Data.xlsx      sheet_name=Sheet2
Resource      ../Resoures/CMSkeyword.robot
Test Setup         Open My Browser
Test Teardown      Close Browser
Test Template       Browserback Button

*** Test Cases ***
2


*** Keywords ***
Browserback Button

        sleep       3seconds
        [Arguments]    ${email}       ${password}
        Enter Email     ${email}
        Enter Password   ${password}
        Click on Sign Button
        sleep       3seconds
        Dashboard page should be visible
        sleep       3seconds
        Browse Back