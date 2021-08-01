*** Settings ***
Documentation  Search Case Scopus
Library  SeleniumLibrary
Library     Dialogs


*** Variables ***


*** Test Cases ***
Base 101 Check
    [Documentation]    Search Case Scopus
    [Tags]    Smoke
    Open Browser    https://www.scopus.com/sources?zone=TopNavBar&origin=NO%20ORIGIN%20DEFINED    safari
    Maximize Browser Window
    Sleep    3s
    Click Element    xpath://*[@id="srcResultComboDrp-button"]/span[1]
    Click Element    xpath://*[@id="ui-id-2"]
    Sleep    3s

    ${data}=    Get Value From User    Enter Keyword

    Input Text    xpath://*[@id="search-term"]    ${data}
    Click Element    xpath://*[@id="searchTermsSubmit"]
    Sleep    3s



*** Keywords ***
