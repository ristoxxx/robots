*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${CUSTOMER_USER_NAME}           hei@moi.com
${CUSTOMER_PASSWORD}            123
*** Keywords ***

test login
    [Arguments]                 ${start_url}
    go to                       ${start_url}
    click link                  id=SignIn
    page should contain         Login
    input "user name"           ${CUSTOMER_USER_NAME}
    input "password"            ${CUSTOMER_PASSWORD}
    click button                Submit
    page should contain         Our Happy

add customer

    click link                  id=new-customer
    page should contain         Add Customer


    input text                  id=EmailAddress     a@b.com
    input text                  id=FirstName        jane
    input text                  id=LastName         doe
    input text                  id=City             Helsinki
    select from list by value    id=StateOrRegion   TX
    select radio button         gender              female
    select checkbox             name=promos-name
    click button                Submit
    wait until page contains    Success! New customer added.

input "user name"
    [Arguments]                                 ${customer_user_name}
    input text                  id=email-id     ${customer_user_name}
    log            filling email field with ${customer_user_name}

input "password"
    [Arguments]                                 ${customer_password}
    input text                  id=password     ${customer_password}