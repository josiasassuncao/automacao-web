*** Settings ***
Library    SeleniumLibrary
Resource   ../pages/login_page.robot

*** Variables ***
${URL}    https://automationexercise.com/login
${BROWSER}    Chrome
${NAME}    John
${EMAIL}    John_email154@gmail.com

*** Keywords ***
[Setup] background test setup
    Given eu acesso a URL "${URL}"
    And eu preencho o campo nome com "${NAME}"
    And eu preencho o campo Email com "${EMAIL}"
    And eu clico em Signup


eu acesso a URL "${URL}"
    Open Browser    url=${URL}    browser=${BROWSER}  

eu preencho o campo nome com "${NAME}"
    Input Text    ${SIGNUP_NAME}    ${NAME}

eu preencho o campo Email com "${EMAIL}"
    Input Text    ${SIGNUP_EMAIL}    ${EMAIL}    ${True}

eu clico em Signup
    Click Button    ${SIGNUP_BUTTON}



