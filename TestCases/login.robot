*** Settings ***
Library   SeleniumLibrary

*** Variables ***

*** Test Cases ***
TestLoginApplication

      open browser      https://cms-staging.oneyou.io/auth/login   chrome
      input text        name:email        ajit.d@amazatic.com
      input text        name:password     123123
      click element     xpath://button[contains(text(),'Sign In')]
      close browser
