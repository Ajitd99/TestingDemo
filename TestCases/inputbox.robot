*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}   https://boxeswala.com/my-account/

*** Test Cases ***
 TestingInputBox
     open browser  ${url}   ${browser}
     maximize browser window
     ${"email_text"}  set variable  id:username

     element should be visible  ${"email_text"}
     element should be enabled  ${"email_text"}

     input text  ${"email_text"}     NilamAjit2022@gmail.com
     sleep  5
     clear element text  ${"email_text"}
     sleep  3
     close browser


