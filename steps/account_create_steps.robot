*** Settings ***
Library     SeleniumLibrary
Resource    ../pages/account_creation_page.robot


*** Keywords ***
que estou na pagina para preencher os dados
    Wait Until Page Contains    Enter Account Information

eu preencho o campo password
    Wait Until Element Is Visible    ${PASSWORD}
    Input Password    ${PASSWORD}    123456

eu preencho o campo firstname
    Wait Until Element Is Visible    ${FIRST_NAME}
    Input Text    ${FIRST_NAME}    John

eu preencho o campo lastname
    Wait Until Element Is Visible     ${LAST_NAME}
    Input Text    ${LAST_NAME}    Doe

eu preencho o campo address
    Scroll Element Into View    ${ADDRESS}
    Input Text    ${ADDRESS}    Rua Ayrton Senna


eu preencho o campo state
    Scroll Element Into View    ${STATE}
    Input Text    ${STATE}    Rua Ayrton Senna


eu preencho o campo city
    Scroll Element Into View    ${CITY}
    Input Text    ${CITY}    Rua Ayrton Senna


eu preencho o campo zipcode
    Scroll Element Into View    ${ZIP_CODE}
    Input Text    ${ZIP_CODE}    Rua Ayrton Senna


eu preencho o campo mobile number
    Scroll Element Into View    ${MOBILE_NUMBER}
    Input Text    ${MOBILE_NUMBER}    Rua Ayrton Senna

eu clico em "Create Account"
    Click Button    ${CREATE_ACCOUNT_BUTTON}

valido que o campo "${required_field}" é obrigatório
    Page Should Contain    Preencha este campo.


valido que a conta foi criada com sucesso
    Wait Until Element Is Visible    ${ACCOUNT_CREATED}
    Page Should Contain    Congratulations! Your new account has been successfully created!
    Page Should Contain    You can now take advantage of member privileges to enhance your online shopping experience with us.