*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
Switch Multiple Browser

        open browser        https://www.google.com      chrome
        maximize browser window
        ${loc}=       get location
        log to console      ${loc}
        sleep  3

        go to        https://www.bing.com/
        maximize browser window
        ${loc}=       get location
        log to console      ${loc}
        sleep  3

        go back
        maximize browser window
        ${loc}=       get location
        log to console      ${loc}


        sleep  3
        close all browsers