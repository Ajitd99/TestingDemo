*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Table Test

         open browser       https://testautomationpractice.blogspot.com/        chrome
         maximize browser window

         #Count number of rows and columns:

         ${rows}=    get element count      xpath://table[@name='BookTable']/tbody/tr
         ${cols}=    get element count     xpath://table[@name='BookTable']/tbody/tr[1]/th
         log to console     ${rows}
         log to console     ${cols}

         #Get data:

         ${data}=    get text    xpath://table[@name='BookTable']/tbody/tr[3]/td[2]
         log to console     ${data}

         #validate table data

          table column should contain       xpath://table[@name='BookTable']    3     Subject
          table row should contain          xpath://table[@name='BookTable']    5     Master In Selenium
          table cell should contain        xpath://table[@name='BookTable']    6   2   Amod
          table header should contain      xpath://table[@name='BookTable']    BookName