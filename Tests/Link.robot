*** Settings ***
Documentation  Testing Case 3
Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***
Base 2 Check
    [Documentation]    Testing Case 1
    [Tags]    Smoke
    Open Browser    https://www.researchgate.net/search.Search.html?type=publication&query=    safari
    Maximize Browser Window
    Wait Until Page Contains    Discover
    Sleep    3s
    Input Text    name:q    machine learning
    Click Element    xpath://div/div[2]/div[2]/form/div[2]/button[1]

    ${linkcount}=    Get Element Count    xpath://a
    Log To Console    ${linkcount}

    ${linkitems}    Create list

    FOR     ${i}    IN RANGE    1    ${linkcount}
        ${linktext}=    Get Element Attribute   xpath:(//a)[${i}]    href
        Log to Console  ${linktext}
    END

*** Keywords ***