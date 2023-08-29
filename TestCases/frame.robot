*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
FrameTest

       open browser         https://github.com/SeleniumHQ/seleniumhq.github.io
       maximize brower window

       select frame     packageListFrame  #id name xpath
       click link       org.openqa
       unselect frame
       sleep    3

       select frame     packageListFrame  #id name xpath
       click link       webdriver
       unselect frame
       sleep    3

       select frame     classFrame
       click link       help
       unselect frame
       sleep    3

       close browser
