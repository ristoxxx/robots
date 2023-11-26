*** Settings ***
Documentation           This is some basic info about the whole suite
Resource                ../Resources/Customer.robot
Resource                ../Resources/Common.robot
Resource                ../Resources/Data.robot
Suite Setup             insert testing data
Test Setup              begin web test
Test Teardown           end web test
Suite Teardown          remove testing data
#run the script
#robot -d results Tests/Crm.robot
*** Variables ***


*** Test Cases ***
Should be able to add new customer
    [Documentation]             This is the info about the test
    [Tags]                      1006 Smoke contacts
    Customer.test login         https://automationplayground.com/crm/
    Customer.add customer

*** Keywords ***


