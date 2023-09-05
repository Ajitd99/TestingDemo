*** Settings ***
Library   SeleniumLibrary
Library       DataDriver       ../TestData/CMS-Login-Data.xlsx      sheet_name=Sheet7
Resource      ../Resoures/CMSkeyword.robot
Test Setup         Open My Browser
Test Teardown      Close Browser
Test Template       Staff CheckBox

*** Test Cases ***
Verify CheckBox


*** Keywords ***
Staff CheckBox

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
        Select Search Bar            NikeStaff2
        sleep       8seconds








