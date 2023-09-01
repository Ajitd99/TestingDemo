*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${LOGIN_PAGE_URL}       https://cms-staging.oneyou.io/auth/login
${PAGE_HEADING_ELEMENT}         xpath://img[@alt='logo']
${PAGE_TEXT_ELEMENT}         css:.blueHeading


*** Test Cases ***
Verify Page Heading
    Open Browser  ${LOGIN_PAGE_URL}  ${BROWSER}
    maximize browser window
    sleep       4seconds
    Page Should Contain Element  ${PAGE_HEADING_ELEMENT}
    Page Should Contain Element  ${PAGE_TEXT_ELEMENT}
    Close Browser