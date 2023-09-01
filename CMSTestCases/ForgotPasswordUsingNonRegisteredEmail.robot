*** Settings ***
Library   SeleniumLibrary
Library       DataDriver       ../TestData/CMS-Login-Data.xlsx      sheet_name=Sheet4
Resource      ../Resoures/CMSkeyword.robot
Suite Setup         Open My Browser
Suite Teardown      Close Browser
Test Template       ForgotPassword

*** Test Cases ***
Forgot Password Test


*** Keywords ***
ForgotPassword

        sleep       3seconds
        Click link on Forgot Password
        sleep       3seconds
        [Arguments]    ${email2}
        Enter Your Email       ${email2}
        sleep       3seconds
        Send Email
        sleep      5seconds
