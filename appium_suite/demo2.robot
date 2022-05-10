*** Settings ***
Library  AppiumLibrary


*** Test Cases ***

TC1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=prakashkumar_YhtDoJ
    ...     browserstack.key=enFCApNR5e4w8qqymD8d
    ...     app=bs://60369d83bfd5bbdf5afcb413e2211d56191f60e0
    ...     device=Google Pixel 3
    ...     os_version=9.0
    ...     project=lt6_project
    ...     build=lt6_build
    ...     name=khanacademy test

    ${app_source}       Get Source
    Log   ${app_source}

    Close Application