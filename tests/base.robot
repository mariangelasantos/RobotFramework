*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${url}           http://nextlab.mksolutions.com.br:4000/register

*** Keywords ***
Nova sessão
    Open Browser                    ${url}          chrome  
Encerra sessão
    Capture Page Screenshot 
    Close Browser                