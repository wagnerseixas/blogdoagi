*** Settings ***
Documentation        Fazer a pesquisa e validar o resultado
#Library     SeleniumLibrary

Library    Browser
Library    Collections
#Library    SeleniumLibrary



*** Variables ***
${URL}        https://blogdoagi.com.br/
${BROWSER}    chromium
#${BOTAOPESQUISAR}        css=div.site-header-above-section-right

${BOTAOPESQUISAR}        css=div.ast-builder-layout-element:nth-child(2)
${ELEMENTO-RESULTADO-ENCONTRADO}        css=h2.entry-title.ast-blog-single-element >a

*** keywords ***
Acessar a pagina do blog Agi 
    #Open Browser        url=${URL}        browser=${BROWSER}
    New Browser    browser=${BROWSER}    headless=True
    New Page    ${URL}
   ${titulo}    Set variable    css=title
   
   # Wait For Elements State         css=title    visible    15
    Browser.Get Title    equal        Blog do Agi | Tudo sobre empréstimo e educação financeira
    
Pesquisar por uma artigo "${PesquisarPor}"
    Wait For Elements State         ${BOTAOPESQUISAR}    visible    15
    Click     css=div.ast-builder-layout-element:nth-child(2) 
    Sleep    5s
    Fill Text    css=input[placeholder="Search..."]    ${PesquisarPor}
    #Click    css=input[placeholder="Search..."]
    Browser.Press Keys   css=input[placeholder="Search..."]     Enter
    Sleep    10s

Validar o resultado esperado "${RESULTADO-ESPERADO}"
    Browser.Get Text        ${ELEMENTO-RESULTADO-ENCONTRADO}     equal    ${RESULTADO-ESPERADO}
