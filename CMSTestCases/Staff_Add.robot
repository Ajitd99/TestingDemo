*** Settings ***
Library   SeleniumLibrary
Library       DataDriver       ../TestData/CMS-Login-Data.xlsx      sheet_name=Sheet7
Resource      ../Resoures/CMSkeyword.robot
Suite Setup         Open My Browser
Suite Teardown      Close Browser
Test Template       Staff Add

*** Test Cases ***
Verify Staff Add


*** Keywords ***
Staff Add

        sleep       3seconds
        [Arguments]    ${email}       ${password}
        Enter Email     ${email}
        Enter Password   ${password}
        Click on Sign Button
        sleep       5seconds
        Dashboard page should be visible
        sleep       1seconds
        Hover on logout section
        sleep       3seconds
        Click on Staff section
        sleep       3seconds
        Move Mouse fron people
        sleep       3seconds
        Click to Add Staff
        sleep       3seconds
        Enter Staff Name           Ajit
        sleep       3seconds
        Enter Staff Email          ajit@99gmail.com
        sleep       3seconds
        Select Cancel
        sleep       3seconds










