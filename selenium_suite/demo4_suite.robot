*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library    XML
#comment2
*** Test Cases ***
TC1
    Append To Environment Variable    Path      E:\\drivers\\chromedriver_win32
    Open Browser    url=https://www.salesforce.com/in/form/signup/freetrial-sales/  browser=chrome
    Maximize Browser Window
    Input Text    name=UserFirstName    Piro
    Input Text    name=UserLastName    Hai
    Input Text    name=UserEmail    aaabbc@gmail.com
    Select From List By Label    name=UserTitle     IT Manager
    Input Text    name=CompanyName    LTTS
    Select From List By Label    name=CompanyEmployees  101 - 500 employees
    Click Element    xpath=//div[@class='checkbox-ui']
    Click Element    name=start my free trial
    Element Text Should Be    locater=xpath=//span[contains(@id,'UserPhone')]   Enter a valid phone number

