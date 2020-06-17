class Views < SitePrism::Page
include Capybara::DSL

    def confirmar_previa
        find("#finish-order")
    end

end