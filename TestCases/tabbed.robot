*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Handled Tabbed Window

      open browser      https://demo.automationtesting.in/Windows.html      chrome
      maximize browser window
      sleep     3
      click element     xpath://*[@id="Tabbed"]/a/button
      sleep     3
      switch window     title=Selenium
      sleep     3
      click element     xpath://*[@id="main_navbar"]/ul/li[3]
      sleep     3
      close all browsers