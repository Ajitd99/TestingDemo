*** Settings ***
Library  SeleniumLibrary


*** Variables ***

*** Test Cases ***
LoginTest
     open browser    https://boxeswala.com/my-account/   Firefox
     input text      id:username    NilamAjit2022@gmail.com
     input text      id:password    Nil@aju2023
     click element   xpath://button[contains(text(),'Log in')]
     close browser
