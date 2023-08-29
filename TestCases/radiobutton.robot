
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      http://demo.automationtesting.in/Register.html

*** Test Cases ***
Testting Radio Buttons and Check Boxes
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed    1seconds

    select radio button    radiooptions   FeMale
    select radio button    radiooptions   Male
    radio button should be set to    radiooptions   Male

    Select checkbox     checkbox1
    Select checkbox     checkbox3

    unselect checkbox       checkbox3
    close browser