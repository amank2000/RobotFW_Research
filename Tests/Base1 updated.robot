*** Settings ***
Documentation  Testing Case 1
Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***
Base 1 Check
    [Documentation]    Testing Case 1
    [Tags]    Smoke
    Open Browser    https://www.researchgate.net/search.Search.html?type=publication&query=    safari
    Maximize Browser Window
    Wait Until Page Contains    Discover
    Sleep    5s
    Input Text    name:q    machine learning
    #Wait Until Keyword Succeeds    1 min    1 sec    Element Should Be Visible    xpath://*[@id="rgw3_60e22720e6e60"]/div/div[2]/div[2]/form/div[2]/button[1]
    Click Element    xpath://div/div[2]/div[2]/form/div[2]/button[1]



*** Keywords ***