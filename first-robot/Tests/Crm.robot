*** Settings ***
Documentation           This is some basic info about the whole suite
Resource                ../Resources/Customer.robot
Resource                ../Resources/Common.robot
Resource                ../Resources/Data.robot
Suite Setup             insert testing data
Test Setup              begin web test          ${BROWSER}
Test Teardown           end web test
Suite Teardown          remove testing data
#run the script
#robot -d results Tests/Crm.robot
*** Variables ***
${BROWSER}                  edge
${URL}                      https://automationplayground.com/crm/

*** Test Cases ***
Should be able to add new customer
    [Documentation]             This is the info about the test
    [Tags]                      1006 Smoke contacts
    Customer.test login         ${URL}
    Customer.add customer

*** Keywords ***


