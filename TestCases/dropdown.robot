*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${browser}          chrome
${url}          https://demo.automationtesting.in/Register.html

*** Test Cases ***
DropDowns

         open browser       ${url}     ${browser}
         maximize browser window
         title should be        Register
         set selenium speed    1seconds

          # select input text
         input text     xpath://body/section[@id='section']/div[1]/div[1]/div[2]/form[1]/div[1]/div[1]/input[1]     Ajit
         input text     xpath://body/section[@id='section']/div[1]/div[1]/div[2]/form[1]/div[1]/div[2]/input[1]     Devkar
         input text     xpath://body/section[@id='section']/div[1]/div[1]/div[2]/form[1]/div[2]/div[1]/textarea[1]    Sarata, Maharashtra 415508
         input text     xpath://body/section[@id='section']/div[1]/div[1]/div[2]/form[1]/div[3]/div[1]/input[1]        devkar9999@gmail.com
         input text     xpath://body/section[@id='section']/div[1]/div[1]/div[2]/form[1]/div[4]/div[1]/input[1]        9975408989

         # select radio button
         select radio button       radiooptions     Male

         # select radio button
         select checkbox        checkbox1

         # select dropdown
         select from list by label    Skills   C
         select from list by index      country     5
         select from list by value      Skills      APIs

         # select list
         #select from list by label      //a[contains(text(),'Spanish')]       Spanish

         #Date Of Birth
         select from list by label        yearbox       1993
         select from list by label        //body/section[@id='section']/div[1]/div[1]/div[2]/form[1]/div[11]/div[2]/select[1]       July
         select from list by value        daybox        5

         click element      xpath://button[@id='submitbtn']
         close browser


