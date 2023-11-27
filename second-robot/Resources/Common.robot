*** Settings ***
Library    SeleniumLibrary


*** Variables ***

*** Keywords ***
open website
    [Arguments]    ${URL}   ${Browser}
    open browser    about:blank  ${BROWSER}
    #maximize browser window

close website
    sleep    3 s
    close browser