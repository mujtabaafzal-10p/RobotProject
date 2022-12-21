*** Settings ***
Library    AppiumLibrary
Library     DateTime
Library     String
Variables  ../Locators/locators.py


*** Keywords ***

Get Current Time
    ${date} =	Get Current Date	UTC     increment=05:00:00  result_format=%I:%M %p
    ${sys_date} =	Get Substring	${date}	    1
    Log To Console    System Time is ${sys_date}
    Element Text Should Be    ${GET_TIME}      ${sys_date}
