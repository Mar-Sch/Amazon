*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary



*** Keywords ***
Verify Cart Page Loaded
    wait until page contains  Added to Cart

Proceed to Checkout
    click link  css=#hlb-ptc-btn-native

