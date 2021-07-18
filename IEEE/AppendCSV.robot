*** Settings ***
Documentation  Append to CSV
Library  SeleniumLibrary
Library    AppendLib

*** Variables ***


*** Test Cases ***
Base 2 Check
    [Documentation]    Append to CSV
    [Tags]    Smoke

    Open Browser    https://ieeexplore.ieee.org/document/9259191    safari
    Maximize Browser Window
    Sleep    5s

    ${get_title}    Get Text    xpath://*[@id="LayoutWrapper"]/div/div/div/div[3]/div/xpl-root/div/xpl-document-details/div/div[1]/section[2]/div/xpl-document-header/section/div[2]/div/div/div[1]/div/div/h1
    Log to Console    \nTitle of Paper: \n${get_title}

    ${get_year}    Get Text    xpath://*[@id="LayoutWrapper"]/div/div/div/div[3]/div/xpl-root/div/xpl-document-details/div/div[1]/div/div[2]/section/div[2]/div/xpl-document-abstract/section/div[3]/div[3]/div[1]/div[2]
    Log to Console    \nDate of Publication: \n${get_year}

    #${get_author}    Get Text    xpath://*[@id="LayoutWrapper"]/div/div/div/div[3]/div/xpl-root/div/xpl-document-details/div/div[1]/section[2]/div/xpl-document-header/section/div[2]/div/div/div[3]/div[1]/div
    #Log to Console    \nName of Authors: \n${get_author}

    ${get_abstract}    Get Text    xpath://*[@id="LayoutWrapper"]/div/div/div/div[3]/div/xpl-root/div/xpl-document-details/div/div[1]/div/div[2]/section/div[2]/div/xpl-document-abstract/section/div[3]/div[1]/div
    Log to Console  \nAbstract: \n${get_abstract}

    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Sleep    3s

    #${get_doi}    Get Text    xpath://*[@id="LayoutWrapper"]/div/div/div/div[3]/div/xpl-root/div/xpl-document-details/div/div[1]/div/div[2]/section/div[2]/xpl-document-abstract/section/div[3]/div[3]/div[2]/div[2]
    #Log to Console    \nDOI: \n${get_doi}

    ${list}=    Create List    ${get_title}    ${get_year}    ${get_abstract}
    ${data}=    create list    ${list}
    append_file    /Users/aman/Desktop/Book2.csv    ${data}


*** Keywords ***