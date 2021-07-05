*** Settings ***
Documentation  Testing Case 2
Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***
ResearchTC
    Open Browser    https://www.researchgate.net/publication/352333045_Machine_Learning    safari
    Capture Element Screenshot    xpath://*[@id="lite-page"]/main/section/section[1]/div/div/h1    /Users/aman/Desktop/RobotProcessAuto/ResearchGate/Link1/Name.png
    Capture Element Screenshot    xpath://*[@id="lite-page"]/main/section/section[1]/div/div/div[1]/div[1]/ul/li    /Users/aman/Desktop/RobotProcessAuto/ResearchGate/Link1/Year.png
    Capture Element Screenshot    xpath://*[@id="lite-page"]/main/section/section[1]/div/div/div[3]    /Users/aman/Desktop/RobotProcessAuto/ResearchGate/Link1/Author.png
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Sleep    5s
    Capture Element Screenshot    xpath://*[@id="lite-page"]/main/section/div[1]/div[1]/div    /Users/aman/Desktop/RobotProcessAuto/ResearchGate/Link1/Absract.png
    Sleep    5s


*** Keywords ***