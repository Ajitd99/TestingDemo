*** Settings ***
Library   SeleniumLibrary
#Library       DataDriver       ../TestData/CMS-Login-Data.xlsx      sheet_name=Sheet7
Resource      ../Resoures/CMSkeyword.robot
#Test Setup         Open My Browser
#Test Teardown      Close Browser
Suite Setup        Open My Browser
Suite Teardown     Close Browser
#Test Template       Verify Search Box

*** Test Cases ***
Verify Search Box
        sleep       3seconds
#        [Arguments]    ${email}       ${password}
        Enter Email     mahesh.j+nike@amazatic.com
        Enter Password   1
        Click on Sign Button
        sleep       5seconds
        Dashboard page should be visible
        sleep       1seconds
        Hover on logout section
        sleep       1seconds
        Click on Report Section
        sleep      1seconds
        Move Mouse fron people
        sleep       3seconds
        Select Search Bar            NikeStaff
        sleep       5seconds
        Clear Search Box
        sleep       5seconds

Verfiy Dropdown Select Report Days
        Select Days        Past 6 Weeks
        sleep       5seconds

Verfiy Number Of Users
        MouseOver on Number Of Users
        sleep      6seconds

Verify Performance Metrics
        Execute JavaScript  window.scrollTo(0, document.body.scrollHeight)
        sleep       5seconds
        Select View               Individual View
        sleep       3seconds


#*** Keywords ***
#Search Box
#
#        sleep       3seconds
#        [Arguments]    ${email}       ${password}
#        Enter Email     ${email}
#        Enter Password   ${password}
#        Click on Sign Button
#        sleep       5seconds
#        Dashboard page should be visible
#        sleep       1seconds
#        Hover on logout section
#        sleep       1seconds
#        Click on Report Section
#        sleep      1seconds
#        Move Mouse fron people
#        sleep       3seconds
#        Select Search Bar            NikeStaff
#        sleep       5seconds









