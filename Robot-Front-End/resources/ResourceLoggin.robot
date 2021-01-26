*** Settings ***
Resource          ResourceConfiguracoes.robot

Library    SeleniumLibrary


*** Variables ***
${INPUT_USUARIO}           id=username
${INPUT_SENHA}             id=password
${AREA_SEGURA}             class=example
${LOGIN_INVALIDO}          id=flash
${TEXTO_AREA_SEGURA}       Secure Area
${timeout}                 5

*** Keywords ***
### Setup e Teardown
Fechar navegador
  Close All Browsers

### Keyworkds
Acessar a tela de Login
  Abrir navegador
  Abre a tela "Loggin"
  
Informa o usuario "${USUARIO_INFORMADO}" e senha "${SENHA_INFORMADA}"
  Input Text    ${INPUT_USUARIO}      ${USUARIO_INFORMADO}
  Input Text    ${INPUT_SENHA}        ${SENHA_INFORMADA}

Clicar em Loggin
  Click Button      class=radius
  Sleep   15s

Valida loggin com sucesso  
  Wait Until Element Is Visible        ${AREA_SEGURA}   timeout=${timeout}
  Wait Until Page Contains     ${TEXTO_AREA_SEGURA}
  Capture Page Screenshot

Valida loggin com erro
  Wait Until Element Is Visible        ${LOGIN_INVALIDO}   timeout=${timeout}
  Capture Page Screenshot