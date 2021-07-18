*** Settings ***
Documentation  Search Case
Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***
Base 1 Check
    [Documentation]    Search Case
    [Tags]    Smoke
    Open Browser    https://ieeexplore.ieee.org/Xplore/home.jsp    safari
    Maximize Browser Window
    Sleep    3s
    Input Text    xpath://xpl-typeahead-migr/div[1]/input[1]    machine learning
    Click Element    xpath://xpl-header/div[1]/div[4]/xpl-search-bar-migr[1]/div[1]/form[1]/div[3]/button[1]
    Sleep    7s



*** Keywords ***