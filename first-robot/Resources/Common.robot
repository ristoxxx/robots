*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Close browser
    sleep                       3s
    close browser

initialize selenium
      Set selenium speed          .2s
      Set selenium timeout        10s

open blank browser
    log                         Starting the test case
    open browser                about:blank

resize the browser
    set window position         x=50    y=50
    set window size             width=1024  height=800
