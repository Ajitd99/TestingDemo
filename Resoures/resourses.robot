*** Settings ***
Library   SeleniumLibrary


*** Keywords ***
LaunchnBrowser
    Open browser      ${url}    ${browser}
    maximize browser window
