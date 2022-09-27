*** Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão 

*** Test Cases ***
Cadastro
    Fill Text     css=input[name="email"]        seuemail@email.com
    Fill Text     css=input[name="fullName"]     Maria José
    Fill Text     css=input[name="cellphone"]    5511976554434
    Select Radio Button    radio
    Click            text=Cadastrar

    Wait For Elements State    css=.sc-aaqME jfMAuN        visible        5    Cadastro error

