*** Settings ***
Resource  C:/Users/schaamar/PycharmProjects/Robot-Training/Amazon_Python3/Resources/PO/Cart.robot
Resource  C:/Users/schaamar/PycharmProjects/Robot-Training/Amazon_Python3/Resources/PO/LandingPage.robot
Resource  C:/Users/schaamar/PycharmProjects/Robot-Training/Amazon_Python3/Resources/PO/Product.robot
Resource  C:/Users/schaamar/PycharmProjects/Robot-Training/Amazon_Python3/Resources/PO/SearchResults.robot
Resource  C:/Users/schaamar/PycharmProjects/Robot-Training/Amazon_Python3/Resources/PO/SignIn.robot
Resource  C:/Users/schaamar/PycharmProjects/Robot-Training/Amazon_Python3/Resources/PO/TopNav.robot


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