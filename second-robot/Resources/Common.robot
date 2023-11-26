*** Settings ***
Library    SeleniumLibrary


*** Variables ***

*** Keywords ***
open website
    [Arguments]    ${URL}   ${Browser}
    open browser    ${URL}  ${BROWSER}

close website
    close browser