*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Capture Screenshot

           open browser     https://www.amazon.in/        chrome
           maximize browser window
           set selenium speed       3seconds
           title should be          Online Shopping site in India: Shop Online for Mobiles, Books, Watches, Shoes and More - Amazon.in
           capture element screenshot       xpath://*[@id="nav-logo-sprites"]       logo.png
           capture page screenshot          Login.png

           close browser