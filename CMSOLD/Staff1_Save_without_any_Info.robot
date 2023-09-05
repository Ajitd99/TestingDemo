*** Settings ***
Library   SeleniumLibrary
Library       DataDriver       ../TestData/CMS-Login-Data.xlsx      sheet_name=Sheet7
Resource      ../Resoures/CMSkeyword.robot
Test Setup         Open My Browser
Test Teardown      Close Browser
Test Template       StaffSave

*** Test Cases ***
Verify Staff Save


*** Keywords ***
StaffSave

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
        Select Save
        sleep       3seconds










