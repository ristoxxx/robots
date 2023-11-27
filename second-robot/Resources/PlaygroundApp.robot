*** Settings ***
Resource    ./PO/Landing.robot
Resource    ./PO/Team.robot
Resource    ./PO/TopNav.robot

*** Variables ***


*** Keywords ***
Go to landing page
    [Documentation]
    [Tags]
    Landing.Navigate to
    Landing.Test that site opens

Go to "Team" page
    [Documentation]
    [Tags]
    TopNav.Select "Teams" page
    Team.Verify page loaded

Validate "Team" page
    Team.Validate "Team" page