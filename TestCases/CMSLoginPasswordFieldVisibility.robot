*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}         Chrome
${LOGIN_URL}       https://cms-staging.oneyou.io/auth/login
${PASSWORD_FIELD}  name:password

*** Test Cases ***
Test Password Visibility Toggle
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Maximize Browser Window
    sleep       3seconds

    # Toggle password visibility and verify it's hidden
    Toggle Password Visibility    ${PASSWORD_FIELD}
    Password Field Should Be Hidden    ${PASSWORD_FIELD}
    sleep       3seconds

    # Toggle password visibility again and verify it's visible
    Toggle Password Visibility    ${PASSWORD_FIELD}
    Password Field Should Be Visible    ${PASSWORD_FIELD}

    Close Browser

*** Keywords ***
Toggle Password Visibility
    [Arguments]    ${locator}
    Click Element    ${locator}

Password Field Should Be Hidden
    [Arguments]    ${locator}
    ${password_type}    Get Element Attribute    ${locator}    type
    Should Be Equal As Strings    ${password_type}    password

Password Field Should Be Visible
    [Arguments]    ${locator}
    ${password_type}    Get Element Attribute    ${locator}    type
    Should Be Equal As Strings    ${password_type}    text
