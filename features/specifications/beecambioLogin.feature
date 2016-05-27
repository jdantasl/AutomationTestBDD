# language: pt
# enconding: utf-8

Funcionalidade: Area de Login no portal Bee Cambio
	Como um usuário com login cadastrado e ativo
	Eu quero efetuar logon no portal Bee Cambio

Cenario: Como um usuário que Acessar area de Login no portal Bee Cambio

Dado que eu acesse o portal do BeeCambio
Quando eu clicar no link Login
E eu escolher pessoa fisica
E eu preencher o campo CPF
E eu preencher o campo Senha
E eu acionar o botao Entrar
Entao meu usuario sera logado