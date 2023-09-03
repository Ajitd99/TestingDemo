*** Settings ***
Library   SeleniumLibrary
Library       DataDriver       ../TestData/CMS-Login-Data.xlsx      sheet_name=Sheet7
Resource      ../Resoures/CMSkeyword.robot
Suite Setup         Open My Browser
Suite Teardown      Close Browser
Test Template       People Search Using CheckBox

*** Test Cases ***
Verify Search Box Using CheckBox


*** Keywords ***
People Search Using CheckBox

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
        Click on People section
        sleep       3seconds
        Move Mouse fron people
        sleep       3seconds
        Click on Search Icon
        sleep       3seconds
        #Select Search checkbox               Last 30 days
        select checkbox        Xpath:(//input[@type='checkbox'])[1]
        sleep       5seconds
        Close Search Icon
        sleep       5seconds






