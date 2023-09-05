*** Settings ***
Library   SeleniumLibrary
Library       DataDriver       ../TestData/CMS-Login-Data.xlsx      sheet_name=Sheet7
Resource      ../Resoures/CMSkeyword.robot
Test Setup         Open My Browser
Test Teardown      Close Browser
Test Template       Performance Metrics

*** Test Cases ***
Verify Performance Metrics


*** Keywords ***
Performance Metrics

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
        Click on Report Section
        sleep       3seconds
        Move Mouse fron people
        sleep       3seconds
        Execute JavaScript  window.scrollTo(0, document.body.scrollHeight)
        sleep       5seconds
        Select View               Individual View
        sleep       3seconds










