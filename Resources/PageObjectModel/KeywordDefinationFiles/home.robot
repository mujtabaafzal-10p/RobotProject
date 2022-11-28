*** Settings ***
Library    AppiumLibrary
Variables  ../Locators/locators.py


*** Keywords ***

Go To Tab
    [Documentation]    Clicks on tab and verify tab opens
    [Arguments]    ${tab_locator}   ${tab_name}
    Click Element   ${tab_locator}
    Element Attribute Should Match  ${tab_locator}   selected    True
    Element Text Should Be   ${APP_HEADER}  ${tab_name}