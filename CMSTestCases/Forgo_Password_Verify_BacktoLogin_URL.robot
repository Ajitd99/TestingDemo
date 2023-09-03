*** Settings ***
Library   SeleniumLibrary
Library       DataDriver       ../TestData/CMS-Login-Data.xlsx      sheet_name=Sheet3
Resource      ../Resoures/CMSkeyword.robot
Suite Setup         Open My Browser
Suite Teardown      Close Browser
Test Template       ForgotPasswordBackToLogin

*** Test Cases ***
Verify Back To Login URl Test


*** Keywords ***
ForgotPasswordBackToLogin

        sleep       3seconds
        Click link on Forgot Password
        sleep       1seconds
        [Arguments]    ${email1}
        Enter Your Email       ${email1}
        sleep       2seconds
        Click To Login Link
        sleep       3seconds
