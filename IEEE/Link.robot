*** Settings ***
Documentation  Links Case
Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***
Base 3 Check
    [Documentation]    Links Case
    [Tags]    Smoke
    Open Browser    https://ieeexplore.ieee.org/Xplore/home.jsp    safari
    Maximize Browser Window
    Sleep    3s
    Input Text    xpath://xpl-typeahead-migr/div[1]/input[1]    machine learning
    Click Element    xpath://xpl-header/div[1]/div[4]/xpl-search-bar-migr[1]/div[1]/form[1]/div[3]/button[1]
    Sleep    7s

    ${linkitems}    Create List

    FOR    ${number}    IN RANGE    3    27
        ${link}=    Get Element Attribute    xpath://body/div[@id='LayoutWrapper']/div[1]/div[1]/div[1]/div[3]/div[1]/xpl-root[1]/div[1]/xpl-search-results[1]/main[1]/div[2]/div[2]/xpl-results-list[1]/div[${number}]/xpl-results-item[1]/div[1]/div[1]/div[2]/h2[1]/a[1]    href
        Log to Console    ${link}
    END


*** Keywords ***