** Settings ***
Library    AppiumLibrary
Variables  ../Locators/locators.py

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