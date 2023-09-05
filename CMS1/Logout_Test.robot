*** Settings ***
Library   SeleniumLibrary
Library       DataDriver       ../TestData/CMS-Login-Data.xlsx      sheet_name=Sheet2
Resource      ../Resoures/CMSkeyword.robot
Test Setup         Open My Browser
Test Teardown      Close Browser
Test Template       Logout

*** Test Cases ***
Verify CMS Logout


*** Keywords ***
Logout

        sleep       3seconds
        [Arguments]    ${email}       ${password}
        Enter Email     ${email}
        Enter Password   ${password}
        Click on Sign Button
        sleep       5seconds
        Dashboard page should be visible
        sleep       1seconds
        Wait Until Element Is Visible        xpath://h2[@class='pageTitle']     timeout=10s
        Hover on logout section
        sleep       3seconds
        Logout Dashboard
        sleep       3seconds


