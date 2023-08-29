*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
URL Count Test

            open browser        https://demo.automationtesting.in/Register.html     chrome
            maximize browser window
            ${linkcount}=       get element count   xpath://a
            log to console      ${linkcount}


            @{linkitems}        create list
            FOR    ${i}     IN RANGE    1       ${linkcount}
            ${linktext}=     get text   xpath:(//a)[${i}]
            log to console          ${linktext}
            END