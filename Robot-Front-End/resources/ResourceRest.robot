*** Settings ***
Resource                  ResourceConfiguracoes.robot
Library    REST           http://jsonplaceholder.typicode.com
Library    SeleniumLibrary

*** Variables ***
${STATUS_GET_SUCESSO}    200

*** Keywords ***
### Setup e Teardown
#Fechar navegador
#  Close All Browsers

### Keyworkds
Solicita metodo "${METODO_SOLICITADO}" da API
  Run Keyword If    '${METODO_SOLICITADO}' == 'GET'           Metodo Get
  Run Keyword If    '${METODO_SOLICITADO}' == 'POST'          Metodo POST
  Run Keyword If    '${METODO_SOLICITADO}' == 'PUT'           Metodo PUT
  Run Keyword If    '${METODO_SOLICITADO}' == 'DELETE'        Metodo DELETE

Metodo Get
  GET         users/1
  Integer     response status             ${STATUS_GET_SUCESSO}
  Integer     response body id            1
  String      response body name          Leanne Graham

Metodo POST
  POST        /users                      { "id": 11, "name": "Anderson Alves" }
  Integer     response status             201
  Integer     response body id            11
  String      response body name          Anderson Alves

Metodo PUT
  PUT         /users/4                    { "age": "25" }
  String      response body age           25

Metodo DELETE
  DELETE      /users/9
  Integer     response status             200     204


