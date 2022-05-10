*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    Path      E:\\drivers\\chromedriver_win32
    Open Browser      browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://smallpdf.com/pdf-to-word
    Choose File    xpath=//input[@type='file']  C:${/}\\Users\\praka\\Downloads
    ${current_title}    Get Title
    Log To Console    ${current_title}
    ${url}      Get Location
    Log To Console      ${url}
    Get Location
