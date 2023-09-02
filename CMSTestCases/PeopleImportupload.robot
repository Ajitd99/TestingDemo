*** Settings ***
Library   SeleniumLibrary
Library       DataDriver       ../TestData/CMS-Login-Data.xlsx      sheet_name=Sheet7
Resource      ../Resoures/CMSkeyword.robot
Suite Setup         Open My Browser
Suite Teardown      Close Browser
Test Template       FileUpload

*** Test Cases ***
Upload File


*** Keywords ***
FileUpload

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
        Click on Import
        sleep       5seconds
        Upload the File                 ../TestData/CMS-Login-Data.xlsx
        sleep       5seconds








