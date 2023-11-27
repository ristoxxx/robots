*** Settings ***
Documentation    Yeee!!!
Resource    ../Resources/Common.robot
Resource    ../Resources/PlaygroundApp.robot
Resource    ../Resources/PO/Landing.robot
Test Setup          open website    ${URL}  ${BROWSER}
Test Teardown       close website

# robot -d results Tests/Playground.robot
*** Variables ***
${BROWSER}                  firefox
${URL}                      https://automationplayground.com/front-office/

*** Tasks ***
Customer should be able to open website
    [Documentation]    Test that page opens
    [Tags]
    PlaygroundApp.Go to landing page

Customer should be able to go to "Team" website
    [Documentation]    Test that page opens
    [Tags]
    PlaygroundApp.Go to landing page
    PlaygroundApp.Go to "Team" page
    PlaygroundApp.Validate "Team" page


*** Keywords ***
