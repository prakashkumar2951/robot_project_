*** Settings ***


*** Test Cases ***
TC1
    Log To Console    Hello Everyone  
    Log To Console    Prakash

TC2
    ${base}  Set Variable  25
    ${height}  Set Variable  1
    Log To Console    ${base}
    ${result}  Evaluate    (${base}*${height})/2
    Log To Console    ${result}

TC3
    ${base1}  Set Variable   25
    ${base2}  Set Variable   2.56
    ${height}  Set Variable   70
    ${result1}  Evaluate      (${base1}+${base2})*${height}/2
    Log To Console    ${result1}
    Log   ${result1}

TC4
