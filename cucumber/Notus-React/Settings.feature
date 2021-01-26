
Funcionalidade: Settings

Contexto:
  Dado que seja acessada a tela principal "https://demos.creative-tim.com/notus-react/?#/admin/dashboard"
  E a tela de settings seja selecionada
  
Cenário: Informações apresentadas
  Quando a tela de settings estiver totalmente carregada
  Então as informações basicas do dashboard devem ser mantidas
  E devem ser apresentados os dados da conta do usuário
  E um resumo com dados de apresentação

Cenário: Editar dados do usuário
  Dado que os dados do usuário sejam alterados
  Quando o botão settings for acionado
  Então as novas informações devem ser salvas
  E o resumo deve ser alterado conforme os novos dados

Cenário: Tamanho dos campos
  Dado que os campos sejam preenchidos ultrapassando os devidos limites
  Quando o botão settings for acionado
  Então a pagina deve apresentar mensagem que os campos ultrapassaram o limite permitido

Cenário: Caracteres especiais
  Dado que os campos sejam preenchidos com caracteres especiais
  Quando o botão settings for acionado
  Então as novas informações devem ser salvas
  E o resumo deve ser alterado conforme os novos dados
  
Cenário: Informações invalidas
  Dado que os campos sejam preenchidos com dados invalidos
  Quando o botão settings for acionado 
  Então a pagina deve apresentar os campos que possuem dados invalidos
  
Cenário: Campos obrigatórios preenchidos
  Dado que deixe de preencher os campos da tela
  Quando o botão settings for acionado  
  Então a pagina deve apresentar que os campos não foram preenchidos

Cenário: Contadores com dados corretos
  Quando a tela de settings estiver totalmente carregada
  Então a foto deve condizer com a do usuário logado
  E os contadores deve condizer com as ações realizadas pelo usuário
  E os dados basicos devem condizer com o cadastro do usuário

Cenário: Opção Show More
  Quando for acionada a opção show more
  Então o usuário deve ser encaminhado para a pagina show more
