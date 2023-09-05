*** Settings ***
Library   SeleniumLibrary
Resource      ../Resoures/CMSkeyword.robot
Suite Setup        Open My Browser
Suite Teardown     Close Browser

*** Test Cases ***
Verify Search Box

        Login the CMS
        Hover on logout section
        sleep       3seconds
        Click on Staff section
        sleep       3seconds
        Move Mouse fron people
        sleep       3seconds
        Select Search Bar            NikeStaff2
        sleep       8seconds
        Clear Search Box
        sleep       8seconds

Verify Check Box

        Select Search checkbox1       2
        sleep       5seconds
        Unselect checkbox       ${Sel_checkbox1}
        sleep       5seconds

Verify Add Staff and Cancel

        Click to Add Staff
        sleep       3seconds
        Enter Staff Name           Ajit
        sleep       3seconds
        Enter Staff Email          ajit@99gmail.com
        sleep       3seconds
        Select Cancel
        sleep       3seconds


Veriry to save Staff without input

        Click to Add Staff
        sleep       3seconds
        Select Save
        sleep       3seconds



