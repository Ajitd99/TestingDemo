*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://boxeswala.com/my-account/

*** Test Cases ***
LoginTest
     open browser    ${url}   ${browser}
     maximize browser window
     set selenium speed   1seconds
     loginToApplication
     close browser


*** Keywords ***
 loginToApplication
     input text      id:username    NilamAjit2022@gmail.com
     input text      id:password    Nil@aju2023
     click element   xpath://button[contains(text(),'Log in')]

