*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Multiple Browser

        open browser        https://demo.automationtesting.in/Register.html     chrome
        maximize browser window
        open browser        https://boxeswala.com/       chrome
        maximize browser window
        close all browsers
