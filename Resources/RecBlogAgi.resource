*** Settings ***

#Library     SeleniumLibrary

Library    Browser
Library    Collections



*** Variables ***
${URL}        https://blogdoagi.com.br/
${BROWSER}    chromium
#${BOTAOPESQUISAR}        css=div.site-header-above-section-right

${BOTAOPESQUISAR}        css=div.ast-builder-layout-element:nth-child(2)


*** keywords ***
Acessar a pagina do blog Agi 
    #Open Browser        url=${URL}        browser=${BROWSER}
    New Browser    browser=${BROWSER}    headless=False
    New Page    ${URL}
Pesquisar por uma artigo "LGPD"
    Wait For Elements State         ${BOTAOPESQUISAR}    visible    15
    Click     css=div.ast-builder-layout-element:nth-child(2) 
    Sleep    5s

#Validar o resultado esperado "LGPD"



