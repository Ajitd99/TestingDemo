*** Settings ***
Library   SeleniumLibrary

*** Variables ***

*** Test Cases ***
TestLoginApplication

      open browser      https://cms-staging.oneyou.io/auth/login   chrome
      maximize browser window
      set selenium speed    1seconds
      input text        xpath://input[name='email']            mahesh.j+nike@amazatic.com
      input text        xpath:(//input[@name='password'])[1]             1
      click element     xpath://button[normalize-space()='Sign In']
      close browser
