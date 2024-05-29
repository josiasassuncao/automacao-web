*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/keywords.robot
Resource    ../steps/account_create_steps.robot
Suite Teardown    Close Browser

*** Variables ***
${URL}          https://automationexercise.com/login
${BROWSER}      chrome


*** Test Cases ***
Scenario: Verificar que o campo First name é obrigatório
    [Setup] background test setup
    Given que estou na pagina para preencher os dados
    And eu preencho o campo password
    When eu clico em "Create Account"
    Then valido que o campo "First name" é obrigatório

Scenario: Verificar que o campo Last name é obrigatório
    [Setup] background test setup
    Given que estou na pagina para preencher os dados
    And eu preencho o campo password
    And eu preencho o campo first name
    When eu clico em "Create Account"
    Then valido que o campo "Last name" é obrigatório

Scenario: Verificar que o campo Address é obrigatório
    [Setup] background test setup
    Given que estou na pagina para preencher os dados
    And eu preencho o campo password
    When eu clico em "Create Account"
    Then valido que o campo "Address" é obrigatório

Scenario: Validar conta criada com sucesso
    [Setup] background test setup
    Given que estou na pagina para preencher os dados
    And eu preencho o campo password
    And eu preencho o campo first name
    And eu preencho o campo last name
    And eu preencho o campo address
    And eu preencho o campo state
    And eu preencho o campo city
    And eu preencho o campo zipcode
    And eu preencho o campo mobile number
    When eu clico em "Create Account"
    Then valido que a conta foi criada com sucesso