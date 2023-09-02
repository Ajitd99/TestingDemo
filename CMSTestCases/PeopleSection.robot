*** Settings ***
Library   SeleniumLibrary
Library       DataDriver       ../TestData/CMS-Login-Data.xlsx      sheet_name=Sheet7
Resource      ../Resoures/CMSkeyword.robot
Suite Setup         Open My Browser
Suite Teardown      Close Browser
Test Template       PeopleSection

*** Test Cases ***
Select People Section & Select Checkbox


*** Keywords ***
PeopleSection

        sleep       3seconds
        [Arguments]    ${email}       ${password}
        Enter Email     ${email}
        Enter Password   ${password}
        Click on Sign Button
        sleep       5seconds
        Dashboard page should be visible
        sleep       1seconds
        Hover on logout section
        sleep       3seconds
        Click on People section
        sleep       3seconds
        Move Mouse fron people
        sleep       3seconds
        Select Checkbox Item        1
        sleep       5seconds



