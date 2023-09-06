*** Settings ***
Library   SeleniumLibrary
Library       DataDriver       ../TestData/CMS-Login-Data.xlsx      sheet_name=Sheet5
Resource      ../Resoures/CMSkeyword.robot
Test Setup         Open My Browser
Test Teardown      Close Browserer
Test Template       ResetPassword

*** Test Cases ***
Verify Reset Password


*** Keywords ***
ResetPassword

        sleep       3seconds
        Page Should Contain         Forgot Password
        [Arguments]      ${new-password}      ${Confirm-password}
        Enter New Password          ${new-password}
        Enter Confirm Password      ${Confirm-password}
        sleep       3seconds
        Confirm Password
        sleep       3seconds


