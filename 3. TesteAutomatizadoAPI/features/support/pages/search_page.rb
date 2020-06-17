class TesteApi 

    include HTTParty
    $uri_base = 'https://api.openweathermap.org/data/2.5/weather'

    def busca_cidade(cidade)
        $response = HTTParty.get($uri_base, :query => { :q => "#{cidade}", 
                                                        :appid => "c5cb95ff0b348045bb8d7f55319a6dc0", 
                                                        :lang => "pt",
                                                        :units => "metric"})
    end

    def busca_id(id)
        $response = HTTParty.get($uri_base, :query => { :id => "#{id}",
                                                        :appid => "c5cb95ff0b348045bb8d7f55319a6dc0", 
                                                        :lang => "pt",
                                                        :units => "metric"})
    end

    def busca_coordenadas(lon, lat)
    $response = HTTParty.get($uri_base, :query => { :lon => "#{lon}",
                                                    :lat => "#{lat}",
                                                    :appid => "c5cb95ff0b348045bb8d7f55319a6dc0", 
                                                    :lang => "pt",
                                                    :units => "metric"})
    end

    def cidade_errada(tangamandapio)
        $response = HTTParty.get($uri_base, :query => { :q => "#{tangamandapio}", 
                                                        :appid => "c5cb95ff0b348045bb8d7f55319a6dc0", 
                                                        :lang => "pt",
                                                        :units => "metric"})
    end

    def clima_cidade(result)
      JSON.parse(result.body)["weather"][0]["description"]
    end

    def temperatura_cidade(result)
       JSON.parse(result.body)["main"]["temp"]
    end

    def nome_cidade(result)
        JSON.parse(result.body)["name"]
    end

end
