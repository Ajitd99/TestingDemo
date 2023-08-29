*** Settings ***
Library   SeleniumLibrary
Resource    ../Resoures/LoginKeywords.robot

*** Variables ***
${browser}          chrome
${siteUrl}          https://boxeswala.com/my-account/
${user}             NilamAjit2022@gmail.com
${psd}              Nil@aju2023

*** Test Cases ***
Login Test

       open browser       ${siteUrl}      ${browser}
       Enter UserName     ${user}
       Enter Password     ${psd}
       Click login Button
       sleep    3
       Verify Sucessfully Login
       Close My Browsers