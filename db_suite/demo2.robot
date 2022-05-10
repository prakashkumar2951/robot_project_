*** Settings ***
Library     DatabaseLibrary



*** Test Cases ***
TC1
    Connect To Database     dbapiModuleName=pymysql     dbName=dbfree_db    dbUsername=dbfree_db     dbPassword=12345678     dbHost=db4free.net  dbPort=3306
    ${row_count}        Row Count    select * from Products
    Log To Console    ${row_count}