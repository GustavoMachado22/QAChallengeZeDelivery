
  
  Dado('que solicite o clima de uma {string}') do |cidade|
    @result = TesteApi.new.busca_cidade(cidade)
  end
  
  Então('recebo as condições do clima no momento') do
    clima = TesteApi.new.clima_cidade(@result)
    temp = TesteApi.new.temperatura_cidade(@result)
    log "As condições do tempo são: #{clima} com a temperatura de #{temp}º."
  end

  Dado('que solicite o clima com um {string}') do |id|
    @result = TesteApi.new.busca_id(id)
  end
  
  Então('recebo o nome da cidade e as condições do clima no momento') do
    clima = TesteApi.new.clima_cidade(@result)
    temp = TesteApi.new.temperatura_cidade(@result)
    cidade = TesteApi.new.nome_cidade(@result)
    log "#{cidade} apresenta #{clima} com a temperatura de #{temp}º."
  end

  Dado('que solicite o clima de uma coordenada {string} e {string}') do |lon, lat|
    @result = TesteApi.new.busca_coordenadas(lon, lat)
  end

  Dado('que solicite o clima de {string}') do |tangamandapio|
    @result = TesteApi.new.cidade_errada(tangamandapio)
  end
  
  Então('o código de retorno da consulta será um {string}') do |retorno|
    expect(@result.response.code).to eq retorno
    log "O código de retorno é #{retorno} cidade não encontrada"
  end
  