*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
end web test
    sleep                       3s
    close browser

begin web test
    Set selenium speed          .2s
    Set selenium timeout        10s
    log                         Starting the test case
    open browser                about:blank
    set window position         x=50    y=50
    set window size             width=1024  height=800
