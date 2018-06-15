*** Settings ***
Documentation  This is some basic information about the test suite
Resource  C:/Users/schaamar/PycharmProjects/Robot-Training/Amazon_Python3/Resources/AmazonApp.robot
Resource  C:/Users/schaamar/PycharmProjects/Robot-Training/Amazon_Python3/Resources/Common.robot

Suite Setup  Insert Test Data
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test
Suite Teardown  Cleanup Test Data

# robot -d Results Tests
# Robot -d Results --include Current Tests

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  http://www.amazon.com
${SEARCH_TERM} =  exped lightning 60


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke

    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout

Search results page should contain 10 products
    [Tags]  Current
    AmazonApp.Search for Products
    AmazonApp.Verify Search Page Contains Products  10