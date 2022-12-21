*** Settings ***
Library    AppiumLibrary
Library     DateTime
Library     String
Variables  ../Locators/locators.py


*** Keywords ***

Press Timer Key
    [Arguments]    ${value}
    Click Element    id = com.google.android.deskclock:id/timer_setup_digit_${value}