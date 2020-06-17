class Product < SitePrism::Page
    include Capybara::DSL

    element :amount_15, "#add-amount-15"
    element :add_product, "#add-product"
    element :checkbox, ".css-1bgtget-Checkbox"

    def adicionar_produto
        amount_15.click
        add_product.click
    end
    
    def checkbox_click
        checkbox.click
    end
    
end