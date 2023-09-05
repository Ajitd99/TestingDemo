*** Settings ***
Library   SeleniumLibrary
Resource      ../Resoures/CMSkeyword.robot
Suite Setup        Open My Browser
Suite Teardown     Close Browser

*** Test Cases ***
Verify Search Box
        Login the CMS
        Click on People section
        sleep       3seconds
        Move Mouse fron people
        sleep       3seconds
        Select Search Bar            MaheshNike
        sleep       5seconds
        Select Name
        sleep      6seconds
        go back
        sleep      3seconds


Verify Check Box
        Select Search checkbox       1
        sleep       5seconds
        Unselect checkbox       ${Select_checkbox}
        sleep       5seconds

Verify Search Box Using CheckBox
        Click on Search Icon
        sleep       3seconds
        #Select Search checkbox               Last 30 days
        select checkbox        Xpath:(//input[@type='checkbox'])[1]
        sleep       5seconds
        Close Search Icon
        sleep       5seconds

Verify Import And Cancel
        Click on Import
        sleep       3seconds
        Cancle to Upload File
        sleep       3seconds

Verify to Upload .Csv File
        Click on Import
        sleep       3seconds
        Upload the File                 C:\\Users\\User\\PycharmProjects\\TestAutomation\\sample.csv
        sleep       5seconds



