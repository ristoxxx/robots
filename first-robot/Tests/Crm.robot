*** Settings ***
Documentation               This is some basic info about the whole suite
Library                     SeleniumLibrary


#run the script
#robot -d results Tests/Crm.robot
*** Variables ***


*** Test Cases ***
Should be able to add new customer
    [Documentation]             This is the info about the test
    [Tags]                      1006 Smoke contacts
    #initialize selenium
    Set selenium speed          .2s
    Set selenium timeout        10s

    #open close browser
    log                         Starting the test case
    open browser                https://automationplayground.com/crm/

    #resize the close browser
    set window position         x=50    y=50
    set window size             width=1024  height=800

    click link                  id=SignIn
    page should contain         Login

    input text                  id=email-id     joku@toinen.com
    input text                  id=password     txt
    click button                Submit
    page should contain         Our Happy

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

    sleep                       3s
    close browser

*** Keywords ***
