*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TOP_NAV_TEAM_LINK}    xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a

*** Keywords ***
Select "Teams" Page
    [Documentation]
    [Tags]
    click link         ${TOP_NAV_TEAM_LINK}