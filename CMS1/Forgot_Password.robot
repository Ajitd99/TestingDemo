*** Settings ***
Library   SeleniumLibrary
Library       DataDriver       ../TestData/CMS-Login-Data.xlsx      sheet_name=Sheet3
Resource      ../Resoures/CMSkeyword.robot
Test Setup         Open My Browser
Test Teardown      Close Browser
Test Template       ForgotPassword

*** Test Cases ***
Verify Forgot Password


*** Keywords ***
ForgotPassword

        sleep       3seconds
        Click link on Forgot Password
        sleep       3seconds
        [Arguments]    ${email1}
        Enter Your Email       ${email1}
        sleep       3seconds
        Send Email
        sleep      5seconds
