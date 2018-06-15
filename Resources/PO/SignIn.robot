*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SIGNIN_MAIN_HEADING} =  xpath=//h1

*** Keywords ***
Verify SignIn Page Loaded
    page should contain element  ${SIGNIN_MAIN_HEADING}
    element text should be  ${SIGNIN_MAIN_HEADING}  Sign in
