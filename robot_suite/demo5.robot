*** Variables ***
&{MY_DETAILS}   name=pro    role=trainee    location=mys

*** Test Cases ***
TC1
    Log To Console    ${MY_DETAILS}[name]
    Log To Console    ${MY_DETAILS}[role]




