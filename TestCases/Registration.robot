*** Settings ***
Library     SeleniumLibrary
Resource    ../Resoures/RegistrationKeywords.robot

*** Variables ***
${Browser}      chrome
${SiteUrl}      https://www.way2automation.com/way2auto_jquery/registration.php#load_box

*** Test Cases ***
Registration Test

       Open My Browser          ${SiteUrl}     ${Browser}
       Enter First Name           Ajit
       Enter Last Name            Devkar
       #Select Marital Status        Single
       #Select Radio Button       m_status     Single
       Select Country             India
       Select Birth Date Month     1
       Select Birth Date Day       1
       Select Birth Date year     2014
       Phone Number         9975405590
       UserName             admin
       Email                test123@gmail.com
       Password             admin123
       Confirm Password     admin123
       Click Submit
       Close My Browser
