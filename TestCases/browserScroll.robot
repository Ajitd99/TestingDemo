*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Browser Scroll Test

        open browser        https://testautomationpractice.blogspot.com/     chrome
        maximize browser window
        set selenium speed      3seconds
        # execute javascript       window.scrollTo(0,500)
        # scroll element into view     id:datepicker
       Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
       sleep    5
       Execute JavaScript    window.scrollTo(0, -document.body.scrollHeight)