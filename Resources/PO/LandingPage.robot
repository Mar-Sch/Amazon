*** Settings ***
Library  SeleniumLibrary


*** Keywords ***

Load
    Go to  ${START_URL}
    maximize browser window

Verify Page Loaded
    wait until page contains  Hello. Sign in
