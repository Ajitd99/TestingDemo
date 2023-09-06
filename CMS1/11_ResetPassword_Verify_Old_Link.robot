*** Settings ***
Library   SeleniumLibrary
Library       DataDriver       ../TestData/CMS-Login-Data.xlsx      sheet_name=Sheet5
Resource      ../Resoures/CMSkeyword.robot
Test Setup         Open Browser for Reset Password
Test Teardown      Close Browser
Test Template      Reset Password old link

*** Test Cases ***
Verify Reset Password Using old link


*** Keywords ***
Reset Password old link

        sleep     5seconds
        Page Should Contain        This link is Expired!




