*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    Path      E:\\drivers\\chromedriver_win32
    Open Browser    url=https://www.db4free.net/  browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    link=phpMyAdmin »
    Switch Window   phpMyAdmin
    Input Text    id=input_username    admin
    Input Password    id=input_password    admin123
    Click Element    id=input_go
    Element Text Should Be    xpath=(//div[(@class='alert alert-danger')])[3]    expected=Error 1045: Access denied for user. Additional error information may be available, but is being hidden by the $cfg['Servers'][$i]['hide_connection_errors'] configuration directive.
    Element Should Contain    xpath=(//div[(@class='alert alert-danger')])[3]     Access denied for user.
