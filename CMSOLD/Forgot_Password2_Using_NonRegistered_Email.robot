*** Settings ***
Library   SeleniumLibrary
Library       DataDriver       ../TestData/CMS-Login-Data.xlsx      sheet_name=Sheet4
Resource      ../Resoures/CMSkeyword.robot
Test Setup         Open My Browser
Test Teardown      Close Browser
Test Template       Forgot Password Non Registered Email

*** Test Cases ***
Verify Forgot Password Using Non Registered Email

*** Keywords ***
Forgot Password Non Registered Email

        sleep       3seconds
        Click link on Forgot Password
        sleep       3seconds
        [Arguments]    ${email2}
        Enter Your Email       ${email2}
        sleep       3seconds
        Send Email
        sleep      5seconds
