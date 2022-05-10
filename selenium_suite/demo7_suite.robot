*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    Path      E:\\drivers\\chromedriver_win32
    Open Browser    url=https://netbanking.hdfcbank.com/netbanking/  browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Select Frame    xpath=//frame[@name='login_page']
    Input Text    name=fldLoginUserId    qwer1234
    Click Element    link=CONTINUE
    Unselect Frame