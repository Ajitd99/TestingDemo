*** Settings ***
Library   SeleniumLibrary
Resource      ../Resoures/CMSkeyword.robot
Suite Setup        Open My Browser
Suite Teardown     Close Browser


*** Test Cases ***
Verify Search Box
        sleep       3seconds
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
        Page title is             REPORTS
        sleep       3seconds
        Select Search Bar            NikeStaff
        sleep       5seconds
        Clear Search Box
        sleep       5seconds

Verfiy Dropdown Select Report Days
        Graph title is          APP USAGE FREQUENCY
        Select Days        Past 6 Weeks
        sleep       5seconds

Verfiy Number Of Users
        Piechart title is        NUMBER OF USERS
        MouseOver on Number Of Users
        sleep      6seconds

Verify Performance Metrics
        Execute JavaScript  window.scrollTo(0, document.body.scrollHeight)
        sleep       5seconds
        Table title is        PERFORMANCE METRICS
        Select View               Individual View
        sleep       3seconds











