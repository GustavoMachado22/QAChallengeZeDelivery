 
  Dado("que o usuário acesse o site") do
    @home.load
    @home.logo.click
    @home.button_age.click
  end

  Dado("faça o login") do
    @home.login_page
  end

  Dado("que o usuário insira o endereço") do
    @home.address_page
  end
  
  Dado("busque um produto na pesquisa") do
    @search_page.busca_produto
  end
  
  Dado("selecione algumas unidades") do
    @product_page.adicionar_produto
  end

  Então("devo visualizar na sacola o pedido com o botão {string}") do |validar_cel|
    validar_botao = @views_page.confirmar_previa
    expect(validar_botao.text).to eql validar_cel
  end

  Dado("na pesquisa insira um produto não listado") do
    @search_page.busca_nao_listado
  end
  
  Então("o usuário deve visualizar a mensagem {string}") do |produto|
    validar_produto = @search_page.confirme_produto
    expect(validar_produto.text).to eql produto
  end

  Dado("buscar um produto retornavel") do
    @search_page.busca_retornavel
  end
  
  Dado("confirmar que o botão para adicionar exibe o texto {string}") do |retornavel|
    validar_retornavel = @product_page.adicionar_produto
    expect(validar_retornavel.text).to eql retornavel
  end
  
  Dado("quando marcar a caixa de seleção") do
    @product_page.checkbox_click
  end
  
  Então("o usuário deve conseguir adicionar o produto") do
    @product_page.adicionar_produto
  end

  Dado("selecione no filtro cervejas") do
    @search_page.selecionar_filtro
  end
  
  Então("devo conseguir acessar a página da {string} solicitada") do |cerveja|
    @search_page.busca_filtro(cerveja)
  end

  Então("confirmar que está na página da {string} correta") do |cerveja|
    expect(page).to have_current_path(@search_page.confirmacao_url(cerveja))
  end