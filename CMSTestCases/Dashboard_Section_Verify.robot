*** Settings ***
Library   SeleniumLibrary
Library       DataDriver       ../TestData/CMS-Login-Data.xlsx      sheet_name=Sheet2
Resource      ../Resoures/CMSkeyword.robot
Suite Setup         Open My Browser
Suite Teardown      Close Browser
Test Template       Dashboard Section

*** Test Cases ***
Verify Dashboard Section


*** Keywords ***
Dashboard Section

        sleep       3seconds
        [Arguments]    ${email}       ${password}
        Enter Email     ${email}
        Enter Password   ${password}
        Click on Sign Button
        sleep       5seconds
        Dashboard page should be visible
        sleep       5seconds
        Execute JavaScript  window.scrollTo(0, document.body.scrollHeight)
        sleep       3seconds
        Execute JavaScript  window.scrollTo(0, -document.body.scrollHeight)
        sleep       3seconds
