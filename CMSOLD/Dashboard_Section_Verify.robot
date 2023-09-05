*** Settings ***
Library   SeleniumLibrary
Library       DataDriver       ../TestData/CMS-Login-Data.xlsx      sheet_name=Sheet2
Resource      ../Resoures/CMSkeyword.robot
Test Setup         Open My Browser
Test Teardown      Close Browser
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
        Select Badges
        sleep       5seconds
        Close Badges
        sleep       3seconds
        Select 14 days Graph Data
        sleep      5seconds
        Select stress Health
        sleep      5seconds
        Select 21 days Graph Data
        sleep      7seconds
        Select 7 days Graph Data
        sleep      7seconds
        Select Mood
        sleep      7seconds
        Select Physical Activity
        sleep      7seconds
        Execute JavaScript      window.scrollTo(0, document.body.scrollHeight)
        sleep      3seconds
        Select Goal
        sleep      3seconds
        select checkbox         css:body > div:nth-child(2) > div:nth-child(3) > div:nth-child(1) > div:nth-child(1) > section:nth-child(3) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > table:nth-child(1) > tbody:nth-child(2) > tr:nth-child(1) > td:nth-child(1) > input:nth-child(1)
        sleep      5seconds
        Execute JavaScript  window.scrollTo(0, -document.body.scrollHeight)
        sleep      5seconds



