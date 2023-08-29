*** Settings ***
Library     SeleniumLibrary
Resource    ../Resoures/login_res.robot
Suite Setup     Open my browser
Suite Teardown      Close Browsers
Test Template       Login Test

*** Test Cases ***

Right user empty password       NilamAjit2022@gmail.com     ${EMPTY}
Right user wrong password       NilamAjit2022@gmail.com     nil@123
Wrong user right password       NilamAjit22@gmail.com       Nil@aju2023
Wrong user empty password       NilamAjit22@gmail.com       ${EMPTY}
Wrong user wrong password       NilamAjit22@gmail.com       Nil#234

Right user right password       NilamAjit2022@gmail.com         Nil@aju2023



*** Keywords ***
Login Test

         [Arguments]        ${username}        ${password}
         Input username     ${username}
         Input Password     ${password}
         click login button
         #Error message should be visible
         #Dashboard page should be visible

