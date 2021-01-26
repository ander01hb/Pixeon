*** Settings ***
Resource          ../resources/ResourceHello.robot

Test Teardown     Fechar navegador

Documentation    O teste inicia o carregamento da pagina e aguarda a informação de Hello World ser apresentada 

*** Variables ***

*** Test Case ***
Cenário: Valida Hello World 
  Acessar a tela de Hello World
  Clicar em start
  Aguardar gif de carregando
  Valida Texto hello World



