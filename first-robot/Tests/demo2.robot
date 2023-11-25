*** Settings ***
Library  SeleniumLibrary
Library  Collections



*** Test Cases ***
Opn brwser
    log     hello

    Open Browser    wwww.yle.fi     edge



*** Keywords ***
