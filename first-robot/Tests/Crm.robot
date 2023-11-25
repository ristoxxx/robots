*** Settings ***
Documentation           This is some basic info about the whole suite
Resource                ../Resources/Customer.robot
Resource                ../Resources/Common.robot
Test Setup              begin web test
Test Teardown           end web test
#run the script
#robot -d results Tests/Crm.robot
*** Variables ***


*** Test Cases ***
Should be able to add new customer
    [Documentation]             This is the info about the test
    [Tags]                      1006 Smoke contacts
    Customer.test login
    Customer.add customer

*** Keywords ***


