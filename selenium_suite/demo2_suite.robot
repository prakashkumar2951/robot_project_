*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem


*** Test Cases ***
TC1
    Append To Environment Variable    Path           E:\\drivers\\chromedriver_win32
    Open Browser    url=https://www.facebook.com/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element     link=Create New Account
    Input Text    name=firstname    Prakash
    Input Text    name=lastname    Mehta
    Input Text    name=reg_email__    aabbcc123@gmail.com
    Input Text    name=reg_email_confirmation__     aabbcc123@gmail.com
    Input Password     name=reg_passwd__    Welcome1234
    Click Element    Xpath=//input[@value='-1']
    Select From List By Label        name=birthday_day  1
    Select From List By Label        name=birthday_month    Jan
    Select From List By Value        name=birthday_year     2000
    Select Radio Button    sex    2
    Click Element    name=websubmit
    Close Browser
