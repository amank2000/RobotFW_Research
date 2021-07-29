Wait Until Element is Visible
xpath=//a/span[string-length(text())>1]
${AllLinksCount}=    Get Matching Xpath Count    xpath=//a/span[string-length(text())>1]
Log    ${AllLinksCount}
: FOR    ${INDEX}    IN RANGE    1    ${AllLinksCount}
\    Log    ${INDEX}
\    ${currUrl}    get location
\    click element    xpath=(//a/span[string-length(text())>1])[1]
\    do processing here
\    go to    ${currUrl}

-------


Wait Until Element is Visible     xpath=//a/span
# Count number of links on page
${AllLinksCount}=    Get Matching Xpath Count    xpath=//a/span

# Log the count of links
Log    ${AllLinksCount}

# Create a list to store the link texts
@{LinkItems}    Create List

# Loop through all links and store links value that has length more than 1 character
: FOR    ${INDEX}    IN RANGE    1    ${AllLinksCount}
\    Log    ${INDEX}
\    ${lintext}=    Get Text    xpath=(//a/span)[${INDEX}]
\    Log    ${lintext}
\    ${linklength}    Get Length    ${lintext}
\    Run Keyword If    ${linklength}>1    Append To List    ${LinkItems}    ${lintext}
${LinkSize}=    Get Length    ${LinkItems}
Log    ${LinkSize}

Comment    Print all links
: FOR    ${ELEMENT}    IN    @{LinkItems}
\    Log    ${ELEMENT}