*** Settings ***
Documentation        acessar a pagina do Blog AGI

Resource        ../../Resources/RecBlogAgi.resource

Test Setup       Acessar a pagina do blog Agi 
Test Teardown    Take Screenshot

*** Test Cases ***
Acessar o blog Agi
    
    Pesquisar por uma artigo "LGPD"
    Validar o resultado esperado "Open banking: o poder na mão do cliente"
    

