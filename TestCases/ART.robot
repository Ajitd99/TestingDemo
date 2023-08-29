*** Settings ***
Library     SeleniumLibrary
Resource    ../Resoures/RK1.robot

*** Variables ***
${browser}      chrome
${url}          https://demo.automationtesting.in/Register.html



*** Test Cases ***
Test1

         open mybrowser         ${url}          ${browser}
         Enter Fname            Nilam
         Enter Lname            Devkar
         Enter Address          Mumbai, Thane, Wagel Estate, Happy homes, Room no. 2
         Enter Email            nilamdevkar@gmail.com
         Enter Phone Number      8650498989
         #select radio button       radiooptions     Male
         Select Gender             FeMale
         Select hobbies             Movies
         Select Skills          C++
         Select Country           India
         Select Date Of Birth Year     1993
         Select Date Of Birth Month     July
         Select Date Of Birth Day       5
         Enter Password                 admin
         Enter Confirm Password         admin
         Submit Button

         close mybrowser