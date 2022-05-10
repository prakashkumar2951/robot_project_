*** Settings ***
Library  AppiumLibrary
Library    SeleniumLibrary
Test Teardown           Close Application

*** Test Cases ***

TC1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=prakashkumar_YhtDoJ
    ...     browserstack.key=enFCApNR5e4w8qqymD8d
    ...     app=bs://0a59fc1e72ba6d12d956a15edfdecf6039fcb011
    ...     device=Google Pixel 3
    ...     os_version=9.0
    ...     project=lt6_project
    ...     build=lt6_build
    ...     name=khanacademy test

    ${app_source}       Get Source
    Log   ${app_source}

    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']      50s
    Click Element    xpath=//*[@text='Dismiss']
    Wait Until Page Contains Element    xpath=//*[@text='Sign in']      50s
    Click Element    xpath=//*[@text='Sign in']
    Wait Until Page Contains Element    xpath=//*[@text='Sign in']      50s
    Click Element    xpath=//*[@text='Sign in']
    Input Text    xpath=//*[(@text='Enter an e-mail address or username')]      Pro123@gmail.com
    Input Password    xpath=//*[(@text='Password')]    Welcome
    Click Element    xpath=(//*[@text='Sign in'])[2]
    Element Text Should Be    xpath=//*[contains(@text='issue')]    There was an issue signing in
