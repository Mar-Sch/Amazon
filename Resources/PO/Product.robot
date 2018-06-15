*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Verify Product Page Loaded
    wait until page contains  Back to search results

Add to Cart
    click button  id=add-to-cart-button