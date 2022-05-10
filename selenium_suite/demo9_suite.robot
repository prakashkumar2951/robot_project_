*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    Path      E:\\drivers\\chromedriver_win32
    Open Browser      browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://demo.openemr.io/b/openemr
    Input Text    name=authUser    admin
    Input Password     id=clearPass    pass
    #Input Password     css=#clearPass    pass
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element    id=login-button
    #Click Element    css=login-button
    Click Element    xpath=//div[text()='Messages']
    Select Frame    xpath=//iframe[contains(@src,'messages.php')]
    Click Element    partial link=Add New
    Select From List By Label    id=form_note_type      Pharmacy
    Select From List By Label    id=form_message_status     New
    Select From List By Index    id=users       1
    Input Text    id=note    Hello
    Click Element    id=newnote
    Element Should Contain    id=error_reply_to      Please choose a patient
    Unselect Frame
    Close Browser



