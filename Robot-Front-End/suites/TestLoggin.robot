*** Settings ***
Resource          ../resources/ResourceLoggin.robot

Test Teardown     Fechar navegador

Documentation    Os testes abaixo visam validar a tela de loggin 

*** Variables ***

*** Test Case ***
Cenário: Valida Login Correto
  Acessar a tela de Login
  Informa o usuario "tomsmith" e senha "SuperSecretPassword!"
  Clicar em Loggin
  Valida loggin com sucesso

Cenário: Valida Login Invalido
  Acessar a tela de Login
  Informa o usuario "Anderson" e senha "SenhaAnderson"
  Clicar em Loggin
  Valida loggin com erro


