*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Completed
    wait until page contains  results for "${SEARCH_TERM}"

Click Product Link
    [Documentation]  Clicks the first product from the search result
    click link  css=#result_0 > div > div > div > div.a-fixed-left-grid-col.a-col-right > div.a-row.a-spacing-small > div:nth-child(1) > a

Verify Product Count
    [Arguments]  ${ExpectedSearchCount}
    xpath should match x times  //li[contains(@id, "result_")]  ${ExpectedSearchCount}


