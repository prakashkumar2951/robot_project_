*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${MY_NAME}      Pro Hai
${ROLE}         Trainee
@{COLOURS}      red     green       yellow

*** Test Cases ***
TC1
    Log To Console    ${MY_NAME}

TC2
    Log To Console    ${MY_NAME}
    Log To Console    ${ROLE}
    Log To Console    ${COLOURS}
    Log To Console    ${COLOURS}[0]

TC3
    @{fruits}   Create List     apple       grapes      orange
    Log To Console    ${fruits}[1]
    Append To List    ${fruits}     pineapple
    Log To Console    ${fruits}
    Remove From List    ${fruits}    0
    Log To Console    ${fruits}
    Insert Into List    ${fruits}    0    mango
    Log To Console    ${fruits}

TC4
    @{fruit}   Create List     apple   grapes    orange    mango
    FOR    ${i}    IN RANGE    0    4    1
        Log    ${fruit}[${i}]

    END

TC5
    @{fruits}   Create List     apple   grapes  orange  mango
    FOR    ${fruit}    IN    @{fruits}
        Log    ${fruit}
    END