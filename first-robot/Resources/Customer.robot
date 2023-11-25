*** Settings ***
Library    SeleniumLibrary


*** Keywords ***

test login
    click link                  id=SignIn
    page should contain         Login
    input text                  id=email-id     joku@toinen.com
    input text                  id=password     txt
    click button                Submit
    page should contain         Our Happy

add customer
    go to                       https://automationplayground.com/crm/
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