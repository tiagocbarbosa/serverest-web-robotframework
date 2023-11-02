*** Settings ***

Library     SeleniumLibrary

Resource    ../pages/login_page.robot

*** Variables ***

${LOGIN_PAGE_URL}    https://front.serverest.dev/login

${LOGOUT_BUTTON}    data:testid:logout
${SEARCH_INPUT}  data:testid:pesquisar
${SEARCH_BUTTON}  data:testid:botaoPesquisar

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

When I search for a product
    Input Text  ${SEARCH_INPUT}   Logitech MX Vertical
    Click Element   ${SEARCH_BUTTON}

Then only the product searched should be displayed
    Wait Until Element Contains     tag:h5  Logitech MX Vertical
    ${product_card_webElement} =  Get Element Count  css:div.card.col-3
    ${product_card_webElement} =    Convert to string   ${product_card_webElement}
    Should Be Equal     ${product_card_webElement}   1
    Capture Page Screenshot