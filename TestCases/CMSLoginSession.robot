*** Settings ***
Library   SeleniumLibrary
Library       DataDriver       ../TestData/CMS-Login-Data.xlsx      sheet_name=Sheet2
Resource      ../Resoures/CMSkeyword.robot
Test Setup         Open My Browser
Test Teardown      Close All Browser
Test Template       Login Session

*** Test Cases ***
Test Login Session Persistence


*** Keywords ***
Login Session

        sleep       3seconds
        [Arguments]    ${email}       ${password}
        Enter Email     ${email}
        Enter Password   ${password}
        Click on Sign Button
        sleep       3seconds
        Dashboard page should be visible
        sleep       1seconds
        Close All Browser
        Reopen Browser
        Dashboard page should be visible
        Wait Until Element Is Visible        xpath://h2[@class='pageTitle']     timeout=10s
        Dashboard page should be visible
