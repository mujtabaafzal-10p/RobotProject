*** Settings ***
Library    AppiumLibrary
Library     BuiltIn
Library     Collections
Resource  ../Resources/PageObjectModel/KeywordDefinationFiles/common.robot
Resource  ../Resources/PageObjectModel/KeywordDefinationFiles/clock.robot
Resource  ../Resources/PageObjectModel/KeywordDefinationFiles/timer.robot
Resource    ../Resources/PageObjectModel/KeywordDefinationFiles/alarm.robot

*** Test Cases ***
OPEN_APPLICATION
    Open clock
    Page Should Contain Element    ${APP_HEADER}
    Element Text Should Be   ${APP_HEADER}  Clock
VERIFY_TABS_WORKING
    Go To Tab    ${ALARM_TAB}   Alarm
    Go To Tab    ${STOPWATCH_TAB}   Stopwatch
    Go To Tab    ${TIMER_TAB}   Timer
    Go To Tab    ${CLOCK_TAB}   Clock
    Go To Tab    ${BEDTIME_TAB}     Bedtime
PRINT_CURRENT_TIME
    Go To Tab    ${CLOCK_TAB}    Clock
    Get Current Time
Add New Time
    Go To Tab    ${CLOCK_TAB}    Clock
    Click Element    ${ADD_CITY}
    Wait Until Page Contains Element    ${SEARCH_CITY}
    Input Text    ${SEARCH_CITY}    Riyadh
    Wait Until Page Contains Element    ${SEARCH_RESULT}
    Hide Keyboard
    Click Element   ${SEARCH_RESULT}
    Wait Until Page Contains Element    ${APP_HEADER}
    Element Text Should Be    ${CITY_NAME}    Riyadh
    Hide Keyboard
Set Alarm
    Go To Tab    ${ALARM_TAB}   Alarm
    Click Element    ${ADD_ALARM}
    Wait Until Page Contains Element    ${ALARM_HR}
    Click Element   ${ALARM_HR}
    Set Alarm Hour      2
    Click Element    ${ALARM_MIN}
    Set Alarm Min      05
    Click Element    ${SET_ALARM}
    Wait Until Page Contains Element    ${NEW_ALARM}
    Element Should Be Visible    ${NEW_ALARM}
Set Timer
    Go To Tab    ${TIMER_TAB}   Timer
    Press Timer Key    3
    Press Timer Key    0
    Press Timer Key    0
    Press Timer Key    0
    Wait Until Page Contains Element    ${TIMER_SET}
    Click Element    ${TIMER_SET}
    Wait Until Page Contains Element    ${TIMER_STOP}
    Element Should Be Visible    ${TIMER_STOP}
