*** Settings ***
Library   SeleniumLibrary
Resource      ../Resoures/CMSkeyword.robot
Suite Setup        Open My Browser
Suite Teardown     Close Browser


*** Test Cases ***
Verify the Login Test with Valid Input
       Login the Dashboard



Verify login using Browserback Button
       sleep       3seconds
       Browse Back
