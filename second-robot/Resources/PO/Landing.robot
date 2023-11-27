*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${GREETINGS_TEXT}   It's Nice To Meet You

*** Keywords ***
Navigate to
    go to    ${URL}

Test that site opens
    wait until page contains    ${GREETINGS_TEXT}
