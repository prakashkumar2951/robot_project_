*** Settings ***
Library    OperatingSystem
*** Test Cases ***
TC1
    Create File    path=D:\\mine\\hello.txt
    ${files}    List Files In Directory   path=D:\\mine\\company\\LT5
