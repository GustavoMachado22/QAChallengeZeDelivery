
<h1 align="center">
   QA Challenge – Zé Delivery
</h1>

# Sobre o Desafio

### 1. Identifique fluxos críticos

i. Identifique 3 fluxos importantes que mantêm o aplicativo funcionando corretamente. por exemplo: O login (o login é um fluxo importante porque o usuário precisa estar logado para concluir uma compra)

### 2. Teste de automação de interface do usuário

Em nosso aplicativo Web crie um conjunto de testes de automação para um cenário a partir do desafio de código parte 1 (escolha um dos 3 fluxos em que você criou ).1. Identify critical flows

### 3. Teste de automação de API	
Crie testes automatizados para obter tempo usando API Open Weather http://openweathermap.org/current

# Sobre o Teste 

## Construído com:

Este é um teste automatizado projetado usando a linguagem Ruby e Cubumber com estrutura de cenários orientados por comportamento BDD que possui uma documentação muito dinâmica.<br /> 

O uso da linguagem Ruby para automatizar testes de software torna o processo mais eficiente e mais produtivo sem sacrificar a eficácia. Desta forma, conseguimos trabalhar, ao mesmo tempo, com foco no problema e na solução, construindo rapidamente código de excelente qualidade que resolve os problemas e é executado de forma estável. A sintaxe da linguagem Ruby é sucinta e, pelo menos no que se refere à elaboração de scripts de testes automatizados de software, possui recursos similares a linguagens de programação mais verbosas como Java e C#.

### Requerimento	

* Visual Studio Code - [VSCode](https://code.visualstudio.com/)
* Ruby versão 2.7.1 - [Ruby](https://www.ruby-lang.org/pt/documentation/installation/)
* Google Chrome
* ChromeDriver - Este é um driver para o navegador [ChromeDriver](https://chromedriver.chromium.org/)
* Firefox
* GeckoDriver - Este é um driver para o navegador Firefox [GeckoDriver](https://github.com/mozilla/geckodriver)


### Dependências

* Capybara [Gem Capybara](https://github.com/teamcapybara/capybara)
* Cucumber [Gem Cucumber](https://github.com/cucumber/cucumber-ruby)
* Rspec    [Gem Rspec](https://github.com/rspec/rspec)
* Selenium-webdriver [Gem Selenium-Webdriver](https://github.com/SeleniumHQ/selenium/tree/master/rb)
* Webdrivers [Gem Webdrivers](https://github.com/titusfortner/webdrivers)
* SitePrism [Gem SitePrism](https://github.com/site-prism/site_prism)
* Faker [Gem Faker](https://github.com/faker-ruby/faker)
* Cpf_faker [Gem Cpf_faker](https://github.com/bernardo/cpf_faker/) 

<h1 align="center">
   Organização
</h1>

### 1.IdentifiqueFluxosCríticos

* `Code Challenge - QA` - PDF com as regras do desafio.
* `Testes de software com Ruby` - PDF com por que automatizar testes com `Ruby`.
* `Ze Delivery - Casos de Teste` - Xlsx com os casos de testes abordados.
* `Ze Delivery - Fluxos Críticos` - PDF com os fluxos críticos escolhidos.
* `Ze Delivery - Teste Web` - Gif do teste rodando a `API`.
* `Ze Delivery - Teste Cmder` - Gif do teste sendo executado no `Cmder`.
* `Ze Delivery - Teste Web` - Gif do teste rodando a página web.

### 2.TesteAutomatizadoWeb

* `2.TesteAutomatizadoWeb` - Pasta raiz do projeto.
* `Features` - Pasta com as `specs`, `step definitions` e `support`.
* `Specs` - Pasta com os cenários em `Gherkin`, usando `BDD` e `Cucumber`.
* `Step_definitions` - Pasta com o script de automação.
* `Support` - Pasta com arquivos de `pages`, `env` e `hooks`. 
* `Pages` - Pasta com elementos mapeados, `page object` e `classes`.
* `env` contém a configuração do ambiente.
* `hooks` contém configurações para inicializar `classes`.
* `Config` – Pasta com configurações para executar o teste.
* `Gemfile` – Arquivo com as `GEMs` do projeto.

### 3.TesteAutomatizadoAPI

* `3.TesteAutomatizadoAPIadoWeb` - Pasta raiz do projeto.
* `Features` - Pasta com as `specs`, `step definitions` e `support`.
* `Specs` - Pasta com os cenários em `Gherkin`, usando `BDD` e `Cucumber`.
* `Step_definitions` - Pasta com o script de automação.
* `Support` - Pasta com arquivos de `pages`, `env`. 
* `Pages` - Pasta com elementos `page object` e `classes`.
* `env` contém a configuração do ambiente.
* `Config` – Pasta com configurações para executar o teste.
* `Gemfile` – Arquivo com as `GEMs` do projeto.


<h1 align="center">
   Instruções
</h1>

## Instruções de instalação

> Instalar o Visual Studio
```
https://code.visualstudio.com/
```
> Instalar o driver do Chrome ou Firefox
Windows: Baixar o arquivo e extrair na pasta C:/windows <br />
Mac e Linux: Extrair dentro da pasta USR/LOCAL/BIN

```
ChromeDriver https://chromedriver.chromium.org/
GeckoDriver https://github.com/mozilla/geckodriver
```

> Copie o projeto
```
git clone https://github.com/GustavoMachado22/QAChallengeZeDelivey.git
```

Através do CMD dentro da pasta raiz do projeto execute

> Instalar bundler

``` ruby
gem install bundler
```
> Instalar dependências

``` ruby
bundle install
```

## Instruções de execução 

Use os comandos listados abaixo no CMD diretamente na pasta raiz. <br />
No VSCode abra a pasta raiz, acesse o terminal e execute os comandos listados abaixo. 

### Execute todos os testes com o navegador padrão "Chrome"

``` ruby
cucumber
```
### Execute todos os testes com o navegador Firefox

``` ruby
cucumber -p firefox
```

### Execute todos os testes com o modo headless do navegador Chrome

``` ruby
cucumber -p chrome_headless
```

### Execute todos os testes com o modo headless do navegador Firefox

``` ruby
cucumber -p firefox_headless

```
<h1 align="center">
  Teste Cmder
</h1>

![Ze Delivery - Teste Cmder](https://user-images.githubusercontent.com/64233343/84858852-59d9d680-b042-11ea-8dd1-39e1538e1fdf.gif)

<h1 align="center">
  Teste Web
</h1>

![web2](https://user-images.githubusercontent.com/64233343/84860662-da4e0680-b045-11ea-9823-c153cdfbc029.gif)

<h1 align="center">
  Teste API
</h1>
 
![Ze Delivery - Teste API](https://user-images.githubusercontent.com/64233343/84928005-12843200-b0a4-11ea-8828-039954d2200a.gif)


<h1 align="center">
  Observações
</h1>


`1 -` O site pode apresentar instabilidade durante o teste, sendo necessário executar o teste uma segunda vez para que aceite todos os parâmetros.<br />

`2 –` O teste pode apresentar falha caso o e-mail do usuário fake já tenha sido utilizado, favor executar o teste novamente.<br />

`3 -`O cenário @SelecaoDeProduto pode apresentar falha caso o produto selecionado não estiver disponível no momento do teste, isso pode mudar de acordo com o horário em que o teste é realizado, caso necessário poderá escolher um novo produto.<br /> 

```
- Basta seguir o caminho: 2. TesteAutomatizadoWeb\features\support\pages\search_page.rb
- Na função busca_produto alterar "Skol 269ml" para um produto disponível no momento.
```
`4 -` O cenário @BuscaRetornavel pode apresentar falha caso o produto selecionado não estiver disponível no momento do teste, isso pode mudar de acordo o horário em que o teste é realizado, caso necessário poderá escolher um novo produto. <br />

```
- Basta seguir o caminho: 2. TesteAutomatizadoWeb\features\support\pages\search_page.rb
- Na função busca_retornavel alterar "Original 600ml | Apenas o Líquido" 
para um produto que seja necessário garrafas retornáveis disponível no momento.
```

## Autor

<table>
  <tr>
    <td align="center">
      <a href="https://github.com/GustavoMachado22">
        <img src="https://avatars1.githubusercontent.com/u/64233343?s=460&u=acfd721126fe7ac25120ff18bb48f9badd9538c4&v=4" width="100px;" alt="Gustavo Machado"/>
        <br />
        <sub>
          <b>Gustavo Machado</b>
        </sub>
       </a>
       <br />
    </td>
  </tr>
</table>
