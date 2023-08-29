*** Settings ***
Library   SeleniumLibrary
Resource    ../Resoures/resourses.robot

*** Variables ***
${browser}  chrome
${url}      https://boxeswala.com/my-account/


*** Test Cases ***
Use Keywords

         LaunchnBrowser
         input text         id:username   NilamAjit2022@gmail.com
         input text        id:password   Nil@aju2023



