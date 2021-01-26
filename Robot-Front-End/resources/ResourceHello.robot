*** Settings ***
Resource          ResourceConfiguracoes.robot

Library    SeleniumLibrary


*** Variables ***
${BOTAO_START}             xpath=//button[contains(text(), 'Start')]
${GIF_LOADING}             id=loading
${MSG_FINAL}               id=finish
${TEXTO_FINAL}             Hello World!
${timeout}                 10

*** Keywords ***
### Setup e Teardown
Fechar navegador
  Close All Browsers

### Keyworkds
Acessar a tela de Hello World
  Abrir navegador
  Abre a tela "Hello World"
  
Clicar em start
  Click Element                       ${BOTAO_START}    
    
Aguardar gif de carregando
  Wait Until Element Is Visible        ${GIF_LOADING}   timeout=${timeout}
  Wait Until Element Is Not Visible    ${GIF_LOADING}   timeout=${timeout}
                      
Valida Texto hello World
  Wait Until Element Is Visible    ${MSG_FINAL}    timeout=${timeout}
  Element Text Should Be           ${MSG_FINAL}     ${TEXTO_FINAL}
  Capture Page Screenshot