*** Settings ***

Library     SeleniumLibrary

*** Variables ***

${URL}  https://front.serverest.dev/login

*** Keywords ***

Open the browser
    Open Browser    browser=chrome
    Maximize Browser Window

Close the browser
    Close Browser

Given the ServerRest website
    Go to   ${URL}

Element is loaded
    [Arguments]     ${locator}  ${expected_text}

    Wait Until Element Contains     ${locator}  ${expected_text}
    Capture Page Screenshot