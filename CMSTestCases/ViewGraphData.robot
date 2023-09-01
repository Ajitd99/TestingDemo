*** Settings ***
Library   SeleniumLibrary
Library       DataDriver       ../TestData/CMS-Login-Data.xlsx      sheet_name=Sheet2
Resource      ../Resoures/CMSkeyword.robot
Suite Setup         Open My Browser
Suite Teardown      Close Browser
Test Template       Graph Data

*** Test Cases ***
View Graph Data


*** Keywords ***
Graph Data

        sleep       3seconds
        [Arguments]    ${email}       ${password}
        Enter Email     ${email}
        Enter Password   ${password}
        Click on Sign Button
        sleep       5seconds
        Dashboard page should be visible
        sleep      3seconds
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
        sleep      5seconds
        Execute JavaScript      window.scrollTo(0, document.body.scrollHeight)
        sleep      7seconds