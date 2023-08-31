*** Settings ***
Library      SeleniumLibrary
Resource     ../Resoures/CMSkeyword.robot


*** Variables ***
${browser}      chrome
${CMSURL}       https://cms-staging.oneyou.io/auth/login

*** Test Cases ***
CMS Login Test

           Open My Browser         ${CMSURL}         ${browser}
           sleep        3seconds
           Enter Email             mahesh.j+nike@amazatic.com
           Enter Password           1
           Click on Sign Button
           Close Browser
