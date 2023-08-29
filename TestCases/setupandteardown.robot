*** Settings ***
Suite Setup         log to console      open browswer
Suite Teardown      log to console      close browser

Test Setup           log to console     login to app
Test Teardown        log to console     logout to app

*** Test Cases ***
TestCase Product Order
       log to console           This is product order testcase

TestCase Product Order2
       log to console           This is product order testcase2