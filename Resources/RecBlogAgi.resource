*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${URL}        https://blogdoagi.com.br/
${BROWSER}    chrome

*** keywords ***
Acessar a pagina do blog Agi 
    Open Browser        url=${URL}        browser=${BROWSER}



