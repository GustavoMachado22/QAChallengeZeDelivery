class SearchPage < SitePrism::Page
    include Capybara::DSL

    element :product_input, "#search-product-input"
    element :product_list, "#search-product-list"
    element :product_input, "#search-product-input"
    element :product_Not_Found, ".css-1dfadjv-productNotFoundText"
    element :category_cervejas, "#category-Cervejas"

    def busca_produto
        product_input.set "Skol 269ml"
        product_list.click
    end

    def busca_nao_listado
        product_input.set "cocacola"
    end

    def confirme_produto
        product_Not_Found
    end

    def busca_retornavel
        product_input.set "Original 600ml | Apenas o Líquido"
        product_list.click
    end

     def selecionar_filtro
        category_cervejas.click
     end
 
     def busca_filtro(cerveja)
         find("#image-brand-#{cerveja}").click
     end   

     def confirmacao_url(cerveja)
        "https://www.ze.delivery/produtos/marca/#{cerveja.downcase}"
     end

end



