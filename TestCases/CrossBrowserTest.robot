*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Browser    ${URL}    ${BROWSER}
Test Teardown    Close Browser

*** Variables ***
${URL}    https://boxeswala.com/my-account/

*** Test Cases ***
Example Test Case
    [Documentation]    Example test case for cross-browser testing
    input text      id:username    NilamAjit2022@gmail.com
    input text      id:password    Nil@aju2023
    click element   xpath://button[contains(text(),'Log in')]
