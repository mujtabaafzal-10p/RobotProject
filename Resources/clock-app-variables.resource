*** Settings ***
Library    AppiumLibrary

*** Variables ***
#*** Env Variables ***
${REMOTE_URL}     http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    13.0
${DEVICE_NAME}    emulator-5554
${Activity_NAME}        com.android.deskclock.DeskClock
${PACKAGE_NAME}     com.google.android.deskclock

#*** Global ***
${APP_HEADER}       id = com.google.android.deskclock:id/action_bar_title
${ALARM_TAB}        id = com.google.android.deskclock:id/tab_menu_alarm
${TIMER_TAB}        id = com.google.android.deskclock:id/tab_menu_timer
${STOPWATCH_TAB}        id = com.google.android.deskclock:id/tab_menu_stopwatch
${BEDTIME_TAB}      id = com.google.android.deskclock:id/tab_menu_bedtime
${CLOCK_TAB}        id = com.google.android.deskclock:id/tab_menu_clock

*** Keywords ***
Open clock
    [Documentation]    Opens clock app
    Open Application   ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    automationName=UiAutomator2
    ...    newCommandTimeout=2500
    ...    appActivity=${Activity_NAME}
    ...    appPackage=${PACKAGE_NAME}
Go To Tab
    [Documentation]    Clicks on tab and verify tab opens
    [Arguments]    ${tab_locator}   ${tab_name}
    Click Element   ${tab_locator}
    Element Attribute Should Match  ${tab_locator}   selected    True
    Element Text Should Be   ${APP_HEADER}  ${tab_name}