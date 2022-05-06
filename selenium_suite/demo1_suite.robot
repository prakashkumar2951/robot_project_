*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem


*** Test Cases ***
TC1
    Append To Environment Variable    Path           E:\\drivers\\chromedriver_win32
    Open Browser    url=https://www.facebook.com/    browser=chrome
    Input Text    id=email    abc123@gmail.com
    Input Password    id=pass     welcome123
    Click Element     name=login