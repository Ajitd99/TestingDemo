*** Settings ***
Library   SeleniumLibrary
Library       DataDriver       ../TestData/CMS-Login-Data.xlsx      sheet_name=Sheet7
Resource      ../Resoures/CMSkeyword.robot
Test Setup         Open My Browser
Test Teardown      Close Browser
Test Template       Search Box

*** Test Cases ***
Verify Search Box


*** Keywords ***
Search Box

        sleep       3seconds
        [Arguments]    ${email}       ${password}
        Enter Email     ${email}
        Enter Password   ${password}
        Click on Sign Button
        sleep       5seconds
        Dashboard page should be visible
        sleep       1seconds
        Hover on logout section
        sleep       1seconds
        Click on Report Section
        sleep      1seconds
        Move Mouse fron people
        sleep       3seconds
        Select Search Bar            NikeStaff
        sleep       5seconds









