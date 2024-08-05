*** Settings ***
Documentation        acessar a pagina do Blog AGI

Resource        ../../Resources/RecBlogAgi.resource

Test Teardown    Take Screenshot

*** Test Cases ***
Acessar o blog Agi
    Acessar a pagina do blog Agi
    Pesquisar por uma artigo "LGPD"
    #Validar o resultado esperado "LGPD"

