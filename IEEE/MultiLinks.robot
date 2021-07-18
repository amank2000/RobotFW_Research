*** Settings ***
Documentation  Mulitple Links Case
Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***
Base 4 Check
    [Documentation]    Multiple Links Case
    [Tags]    Smoke
    Open Browser    https://ieeexplore.ieee.org/Xplore/home.jsp    safari
    Maximize Browser Window
    Sleep    3s
    Input Text    xpath://xpl-typeahead-migr/div[1]/input[1]    machine learning
    Click Element    xpath://xpl-header/div[1]/div[4]/xpl-search-bar-migr[1]/div[1]/form[1]/div[3]/button[1]
    Sleep    7s

    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Sleep    5s

    FOR    ${linkno}    IN RANGE    2    3
        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
        Sleep    5s
        #${page}    Click Element    xpath://*[@id="xplMainContent"]/div[2]/div[2]/xpl-paginator/div[2]/ul/li[${linkno}]/a
        Click Element    xpath://html/body/div[5]/div/div/div/div[3]/div/xpl-root/div/xpl-search-results/main/div[2]/div[2]/xpl-paginator/div[2]/ul/li[12]/a

        FOR    ${number}    IN RANGE    3    27
            ${link}=    Get Element Attribute    xpath://body/div[5]/div/div/div/div[3]/div/xpl-root/div/xpl-search-results/main/div[2]/div[2]/xpl-results-list/div[${number}]/xpl-results-item/div[1]/div[1]/div[2]/h2/a   href
            Log to Console    ${link}
        END

    END


*** Keywords ***