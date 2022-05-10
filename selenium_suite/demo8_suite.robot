*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    Path      E:\\drivers\\chromedriver_win32
    Open Browser      browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
    Click Element    xpath=//img[@alt='Go']

    ${alert_text}    Handle Alert        action=ACCEPT
    Log To Console    ${alert_text}
    Log      ${alert_text}