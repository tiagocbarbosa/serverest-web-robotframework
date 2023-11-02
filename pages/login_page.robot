*** Settings ***

Library     SeleniumLibrary

Resource    ../resources/properties.resource

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
    Wait Until Element Contains     tag:h2  Cadastro
    Location Should Be  ${REGISTER_PAGE_URL}
    Capture Page Screenshot

    Input Text  ${NAME_INPUT}   teste
    Input Text  ${EMAIL_INPUT}   ${EMAIL}
    Input Text  ${PASSWORD_INPUT}   ${PASSWORD}
    Capture Page Screenshot
    Click Element   ${REGISTER_BUTTON}

Then I am redirected to the home page
    Wait Until Element Contains     tag:h1  Serverest Store
    Wait Until Element Contains     tag:h4  Produtos
    Location Should Be  ${HOME_PAGE_URL}
    Capture Page Screenshot