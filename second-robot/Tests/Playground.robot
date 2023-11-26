*** Settings ***
Resource    ../Resources/Common.robot
Test Setup          open website    ${URL}  ${BROWSER}
Test Teardown       close website

# robot -d results Tests/Playground.robot
*** Variables ***
${BROWSER}                  firefox
${URL}                      https://www.yle.fi

*** Tasks ***
First test
    log     moi
Second test
    log    hei

*** Keywords ***
