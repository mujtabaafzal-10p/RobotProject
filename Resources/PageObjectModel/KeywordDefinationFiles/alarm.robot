*** Settings ***
Library    AppiumLibrary
Library     DateTime
Library     String
Variables  ../Locators/locators.py


*** Keywords ***

Set Alarm Hour
    [Arguments]    ${hour}
    Click Element    //android.widget.TextView[@content-desc="${hour} o'clock"]
Set Alarm Min
    [Arguments]    ${min}
    Click Element   //android.widget.TextView[@content-desc="${min} minutes"]