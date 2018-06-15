*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Begin Web Test
    open browser  about:blank  ${BROWSER}

End Web Test
    close browser

Insert Test Data
    log  Im adding the test data to the data base

Cleanup Test Data
    log  Im cleaning the data up...