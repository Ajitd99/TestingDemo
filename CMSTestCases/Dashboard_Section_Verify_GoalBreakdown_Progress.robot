*** Settings ***
Library   SeleniumLibrary
Library       DataDriver       ../TestData/CMS-Login-Data.xlsx      sheet_name=Sheet2
Resource      ../Resoures/CMSkeyword.robot
Suite Setup         Open My Browser
Suite Teardown      Close Browser
Test Template       Goal Breakdown

*** Test Cases ***
Verify Dashboard Section Goal Breakdown


*** Keywords ***
Goal Breakdown

        sleep       3seconds
        [Arguments]    ${email}       ${password}
        Enter Email     ${email}
        Enter Password   ${password}
        Click on Sign Button
        sleep       5seconds
        Dashboard page should be visible
        sleep      3seconds
        Execute JavaScript      window.scrollTo(0, document.body.scrollHeight)
        sleep      3seconds
        Select Goal
        sleep      3seconds
        select checkbox         css:body > div:nth-child(2) > div:nth-child(3) > div:nth-child(1) > div:nth-child(1) > section:nth-child(3) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > table:nth-child(1) > tbody:nth-child(2) > tr:nth-child(1) > td:nth-child(1) > input:nth-child(1)
        sleep      5seconds
        Execute JavaScript  window.scrollTo(0, -document.body.scrollHeight)
        sleep      5seconds





