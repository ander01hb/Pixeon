*** Settings ***
Resource          ../resources/ResourceRest.robot

##Test Teardown     Fechar navegador

Documentation    Os testes abaixo visam avaliar o funcionamento da api 

*** Variables ***

*** Test Case ***
Cenário: API GET
  Solicita metodo "GET" da API

Cenário: API POST
  Solicita metodo "POST" da API

Cenário: API PUT
  Solicita metodo "PUT" da API

Cenário: API DELETE
  Solicita metodo "DELETE" da API
