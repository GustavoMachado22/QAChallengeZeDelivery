#language: pt
#encoding: utf-8
#author: gustavo.machado
#date: 12/06/2020
#version:1.0

Funcionalidade: Consultar clima usando API Open Weather
   Como cliente
   Desejo fazer consulta do clima de uma região utilizando API
   e visualizar o resultado da busca

   @Cidade
    Cenário: Consultar o clima de uma cidade 
        Dado que solicite o clima de uma <cidade>
        Então recebo as condições do clima no momento

    Exemplos:
    |  cidade         |
    |"Curitiba"       |
    |"Belo Horizonte" |
    |"Recife"         |
    |"Rio de Janeiro" |      
    |"São Paulo"      |

    @ID
    Cenário: Consultar o clima de uma cidade por ID
        Dado que solicite o clima com um <id>
        Então recebo o nome da cidade e as condições do clima no momento

    Exemplos:
    |   id     | 
    |"6322752" |
    |"3470127" |
    |"3390760" |
    |"3451190" |      
    |"3448439" |

    @Coordenadas
    Cenário: Consultar o clima de uma cidade por coordenadas
        Dado que solicite o clima de uma coordenada <lon> e <lat>
        Então recebo o nome da cidade e as condições do clima no momento

    Exemplos:
    |  lon    |  lat   |
    |"-49.29" |"-25.5" |
    |"-43.94" |"-19.92"|
    |"-34.88" |"-8.05" |
    |"-43.21" |"-22.9" |   
    |"-46.64" |"-23.55"|

    @CidadeErrada
    Cenário: Consultar o clima de uma cidade que não existe
        Dado que solicite o clima de "Tangamandapio"
        Então o código de retorno da consulta será um '404'



