#language: pt
#encoding: utf-8
#author: gustavo.machado
#date: 11/06/2020
#version:1.0

Funcionalidade: Realizar busca e seleção de produtos
   Como um usuário 
   Desejo fazer busca de produtos, selecionar
   e visualizar o resultado no carrinho.
   
Contexto: Usuário realiza login no site
    Dado que o usuário acesse o site

@SelecaoDeProduto
Cenário: use a pesquisa para encontrar algum produto
    E faça o login
    E que o usuário insira o endereço
    E busque um produto na pesquisa
    E selecione algumas unidades
    Então devo visualizar na sacola o pedido com o botão 'VALIDAR TELEFONE PARA CONTINUAR'

@BuscaNaoListada
Cenário: procure um produto não encontrado 
    E que o usuário insira o endereço
    E na pesquisa insira um produto não listado 
    Então o usuário deve visualizar a mensagem 'Putz, não conseguimos encontrar o produto'

@BuscaRetornavel
Cenário: Validar campo de garrafas retornaveis
    E que o usuário insira o endereço 
    E buscar um produto retornavel 
    E confirmar que o botão para adicionar exibe o texto 'CONFIRME SE POSSUI GARRAFAS'
    E quando marcar a caixa de seleção 
    Então o usuário deve conseguir adicionar o produto 

@BuscaPorFiltro
Esquema do Cenário: Fazer uma busca com o filtro das Consagradas
    E que o usuário insira o endereço 
    E selecione no filtro cervejas
    Então devo conseguir acessar a página da <cerveja> solicitada
    E confirmar que está na página da <cerveja> correta

    Exemplos:
    |  cerveja   |
    |"Brahma"    |
    |"Skol"      |
    |"Budweiser" |
    |"Antarctica"|      
    |"Original"  |
 
    
      
     
     
       