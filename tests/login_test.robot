*** Settings ***

Resource    ../pages/login_page.robot
Resource    ../pages/utils.robot

Test Setup  Open the browser
Test Teardown   Close the browser

*** Test Cases ***

Login a new registered account succesfuly
    Given the ServerRest website
    When I register a new account
    Then I am redirected to the home page