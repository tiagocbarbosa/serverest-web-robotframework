*** Settings ***

Library     SeleniumLibrary

*** Variables ***

${REGISTER_PAGE_URL}     https://front.serverest.dev/cadastrarusuarios
${HOME_PAGE_URL}    https://front.serverest.dev/home

${REGISTER_BUTTON}  data:testid:cadastrar
${NAME_INPUT}  data:testid:nome
${EMAIL_INPUT}  data:testid:email
${PASSWORD_INPUT}  data:testid:password
${PASSWORD_INPUT}  data:testid:password

*** Keywords ***

When I register a new account
    Click Element   ${REGISTER_BUTTON}
    Capture Page Screenshot
    Location Should Be  ${REGISTER_PAGE_URL}
    Wait Until Element Contains     tag:h2  Cadastro

    Input Text  ${NAME_INPUT}   teste4
    Input Text  ${EMAIL_INPUT}   teste4@email.com
    Input Text  ${PASSWORD_INPUT}   1234
    Capture Page Screenshot
    Click Element   ${REGISTER_BUTTON}

Then I am redirected to the home page
    Wait Until Element Contains     tag:h1  Serverest Store
    Capture Page Screenshot
    Location Should Be  ${HOME_PAGE_URL}