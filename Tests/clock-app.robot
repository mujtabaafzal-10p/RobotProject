*** Settings ***
Library    AppiumLibrary
Resource   ../Resources/clock-app-variables.resource

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
