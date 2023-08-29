*** Settings ***
Library     SeleniumLibrary
Resource    ../Resoures/CmsLoginKeywords.robot

*** Variables ***
${browser}        chrome
${loginurl}       https://www.pinspiresoftware.com/wp-login.php
${email}          PinspireSoftware
${psd}            Pinspire#$Software2323


*** Test Cases ***
CMS Login Test

    Open My Browser     ${loginurl}    ${browser}
    Enter Email         ${email}
    Enter Password      ${psd}
    Click Signin Button
    sleep       3 seconds
    Verify Sucessfully Login
    Close My Browsers


