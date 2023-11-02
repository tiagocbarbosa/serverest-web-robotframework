*** Settings ***

Library     SeleniumLibrary

Resource    ../pages/login_page.robot

*** Variables ***

${LOGIN_PAGE_URL}    https://front.serverest.dev/login

${LOGOUT_BUTTON}    data:testid:logout

*** Keywords ***

Given the ServerRest home page
    Given the ServerRest website
    When I register a new account
    Then I am redirected to the home page

When I logout the account
    Click Element   ${LOGOUT_BUTTON}

Then I am redirected to the login page
    Wait Until Element Contains     tag:h1  Login
    Location Should Be  ${LOGIN_PAGE_URL}
    Capture Page Screenshot