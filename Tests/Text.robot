*** Settings ***
Documentation  Testing Case 4
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
ResearchText Check
    [Documentation]    Testing Case 4
    [Tags]    Smoke

    Open Browser    https://www.researchgate.net/publication/352014208_Machine_Learning    safari
    Maximize Browser Window
    Sleep    3s

    ${get_title}    Get Text    xpath://*[@id="lite-page"]/main/section/section[1]/div/div/h1
    Log to Console    \nTitle of Paper: \n${get_title}

    ${get_year}    Get Text    xpath://*[@id="lite-page"]/main/section/section[1]/div/div/div[1]/div[1]/ul/li
    Log to Console    \nYear of Publication: \n${get_year}

    ${get_author}    Get Text    xpath://*[@id="lite-page"]/main/section/section[1]/div/div/div[3]/div/div/div[1]/div/div[2]/div/div/div/div/div
    Log to Console    \nName of Authors: \n${get_author}

    ${get_abstract}    Get Text    xpath://*[@id="lite-page"]/main/section/div[1]/div[1]/div/div[2]
    Log to Console  \nAbstract: \n${get_abstract}


*** Keywords ***
