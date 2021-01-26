*** Settings ***
Library    SeleniumLibrary
Library    DatabaseLibrary

*** Variables ***
${BROWSER}                firefox
${HELLO_WORLD}            https://the-internet.herokuapp.com/dynamic_loading/1 
${LOGGIN}                 https://the-internet.herokuapp.com/login 

 
*** Keywords ***
Abrir navegador
  Open Browser    about:blank     ${BROWSER}
  Maximize Browser Window

Abre a tela "${PAGINA}"
  Run Keyword If    '${PAGINA}' == 'Hello World'    Pagina Hello World
  Run Keyword If    '${PAGINA}' == 'Loggin'         Pagina Loggin
  
Pagina Hello World
  Go To       ${HELLO_WORLD}
 
Pagina Loggin 
  Go To       ${LOGGIN}
    