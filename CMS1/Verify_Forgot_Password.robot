*** Settings ***
Library   SeleniumLibrary
Resource      ../Resoures/CMSkeyword.robot
Test Setup        Open My Browser
Test Teardown     Close Browser


*** Test Cases ***
Verify Forgot Password
        sleep       3seconds
        Click link on Forgot Password
        sleep       3seconds
        Enter Your Email       ajit.d@amazatic.com
        sleep       3seconds
        Send Email
        sleep      5seconds


Verify Back To Login URl
        sleep       5seconds
        Click link on Forgot Password
        sleep      5seconds
        Click To Login Link
        sleep       3seconds

Verify Forgot Password Using Non Registered Email
         sleep       5seconds
         Click link on Forgot Password
         sleep       3seconds
         Enter Your Email       ajitd@gmail.com
         sleep       1seconds
         Send Email
         sleep      5seconds