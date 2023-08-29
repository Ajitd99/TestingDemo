*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Mouse Actions

           open browser         https://demo.automationtesting.in/Windows.html        chrome
           maximize browser window
           sleep    3
           open context menu        xpath://*[@id="Tabbed"]/a     #right click
           sleep    3

           go to        https://testautomationpractice.blogspot.com/
           Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
           double click element     xpath://*[@id="HTML10"]/div[1]/button    #double click
           sleep    3

           Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
           drag and drop        id:draggable     id:droppable      #drag and drop
           sleep    4

           close browser


