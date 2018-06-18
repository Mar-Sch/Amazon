*** Settings ***
Resource  ./PO/Cart.robot
Resource  ./PO/LandingPage.robot
Resource  ./PO/Product.robot
Resource  ./PO/SearchResults.robot
Resource  ./PO/SignIn.robot
Resource  ./PO/TopNav.robot


*** Keywords ***
Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Product
    SearchResults.Verify Search Completed

Select Product from Search Results
    SearchResults.Click Product Link
    Product.Verify Product Page Loaded

Add Product to Cart
    Product.Add to Cart
    Cart.Verify Cart Page Loaded

Begin Checkout
    Cart.Proceed to Checkout
    SignIn.Verify SignIn Page Loaded

Verify Search Page Contains Products
    [Arguments]  ${ExpectedSearchResults}
    SearchResults.Verify Product Count  ${ExpectedSearchResults}