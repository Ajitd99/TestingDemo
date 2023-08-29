*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Alert Test

       open browser     https://testautomationpractice.blogspot.com/     chrome
       maximize browser window
       click element       xpath://*[@id="HTML9"]/div[1]/button[2]  #open alert
       sleep    3
       handle alert     accept
       sleep    3
       #handle alert     dismiss
       #handle alert     leave


