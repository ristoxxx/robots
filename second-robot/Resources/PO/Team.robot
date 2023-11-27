*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TEAM_HEADER_LABEL}    xpath=//*[@id="team"]/div/div[1]/div/h2

*** Keywords ***
Verify page loaded
    wait until page contains element    ${TEAM_HEADER_LABEL}

Validate "Team" page
    ${ElementText} =    get text    ${TEAM_HEADER_LABEL}
    should be equal as strings  ${ElementText}    Our Amazing Team  ignore_case=true