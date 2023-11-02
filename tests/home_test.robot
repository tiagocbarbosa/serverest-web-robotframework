*** Settings ***

Resource    ../pages/home_page.robot
Resource    ../pages/utils.robot

Test Setup  Open the browser
Test Teardown   Close the browser

*** Test Cases ***

Logout successfully a valid account
    Given the ServerRest home page
    When I logout the account
    Then I am redirected to the login page

Search for a product successfully
    Given the ServerRest home page
    When I search for a product
    Then only the product searched should be displayed