*** Settings ***
Library   SeleniumLibrary
Library       DataDriver       ../TestData/CMS-Login-Data.xlsx      sheet_name=Sheet5
Resource      ../Resoures/CMSkeyword.robot
Suite Setup         Open Browser for Reset Password
Suite Teardown      Close Browser
Test Template       ResetPasswordoldlink

*** Test Cases ***
Reset Password Test Using old link


*** Keywords ***
ResetPasswordoldlink

        sleep     5seconds
        Page Should Contain        This link is Invalid!



