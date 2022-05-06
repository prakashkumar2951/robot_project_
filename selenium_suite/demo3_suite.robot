*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem


*** Test Cases ***
TC1
    Append To Environment Variable    Path           E:\\drivers\\chromedriver_win32
    Open Browser    url=https://www.goto.com/meeting/trial    browser=chrome
    Click Element     id=truste-consent-button
    Input Text    name=FirstName    Pro
    Input Text    name=LastName     Hai
    Input Text    name=Email       aaabc123@gmail.com
    Input Text    id=contact-number   2374646387
    Input Password     id=login__password    Welcome1234@$
    Select From List By Label        name=CompanySize   1 - 9
    Click Element    Xpath=//button[text()='Start My Trial']
