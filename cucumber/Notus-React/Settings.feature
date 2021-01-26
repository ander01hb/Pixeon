
Funcionalidade: Settings

Contexto:
  Dado que seja acessada a tela principal "https://demos.creative-tim.com/notus-react/?#/admin/dashboard"
  E a tela de settings seja selecionada
  
Cen�rio: Informa��es apresentadas
  Quando a tela de settings estiver totalmente carregada
  Ent�o as informa��es basicas do dashboard devem ser mantidas
  E devem ser apresentados os dados da conta do usu�rio
  E um resumo com dados de apresenta��o

Cen�rio: Editar dados do usu�rio
  Dado que os dados do usu�rio sejam alterados
  Quando o bot�o settings for acionado
  Ent�o as novas informa��es devem ser salvas
  E o resumo deve ser alterado conforme os novos dados

Cen�rio: Tamanho dos campos
  Dado que os campos sejam preenchidos ultrapassando os devidos limites
  Quando o bot�o settings for acionado
  Ent�o a pagina deve apresentar mensagem que os campos ultrapassaram o limite permitido

Cen�rio: Caracteres especiais
  Dado que os campos sejam preenchidos com caracteres especiais
  Quando o bot�o settings for acionado
  Ent�o as novas informa��es devem ser salvas
  E o resumo deve ser alterado conforme os novos dados
  
Cen�rio: Informa��es invalidas
  Dado que os campos sejam preenchidos com dados invalidos
  Quando o bot�o settings for acionado 
  Ent�o a pagina deve apresentar os campos que possuem dados invalidos
  
Cen�rio: Campos obrigat�rios preenchidos
  Dado que deixe de preencher os campos da tela
  Quando o bot�o settings for acionado  
  Ent�o a pagina deve apresentar que os campos n�o foram preenchidos

Cen�rio: Contadores com dados corretos
  Quando a tela de settings estiver totalmente carregada
  Ent�o a foto deve condizer com a do usu�rio logado
  E os contadores deve condizer com as a��es realizadas pelo usu�rio
  E os dados basicos devem condizer com o cadastro do usu�rio

Cen�rio: Op��o Show More
  Quando for acionada a op��o show more
  Ent�o o usu�rio deve ser encaminhado para a pagina show more
