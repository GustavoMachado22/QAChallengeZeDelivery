class HomePage < SitePrism::Page

    set_url "https://www.ze.delivery/"

    element :button_signin, "#welcome-button-sign-in"
    element :button_age, "#age-gate-button-yes"
    element :logo, ".css-qmbh16"
  
    class DontHaveAccountView < SitePrism::Section
      element :dont_have_account, "#login-home-link-dont-have-account"
      element :signup_button, "#signup-home-button-email"
    end
    section :dont_have_account, DontHaveAccountView, 'div.css-72k0mz-container'
    
    class InputUserModal < SitePrism::Section  
      element :name, "#signup-email-input-name"
      element :email, "#signup-email-input-email"
      element :password, "#signup-email-input-password"
      element :cpf, "#signup-email-input-document"
      element :phone, "#signup-email-input-phone"
      element :age, "#signup-email-input-age"
      element :confirm_button, "#signup-email-button-signUp"
    end
    section :input_user_modal, InputUserModal, 'div.css-1a9wn16-container'

    class CloseView < SitePrism::Section
      element :confirm_code, "#confirm-phone-input-code"
      element :close_modal, "#sidebar-header-close-button" 
    end
    section :close_view_button, CloseView, '.css-nk05d0-aside-asideRight'

    class InputAddress < SitePrism::Section
      element :fakeInput, ".css-1jwjw9o-input-Input"
    end
    section :input_user_address, InputAddress, '.css-b0otop-inputContainer-Input'

    class Backdrop < SitePrism::Section
      element :address, "#address-search-input-address"
      element :autocomplete_card, " .css-bk3xhj-container-googleAutocompleteCard-AutoCompleteAddressListItem"
      element :checkbox_without_complement, ".css-y5qwgr-text-checkbox-Checkbox"
      element :address_details, "#address-details-button-continue"
    end
    section :input_backdrop, Backdrop, '.css-9tzfq-Backdrop'

    def user_data
      @first_name = Faker::Name.first_name
      @last_name = Faker::Name.last_name
      @name = "#{@first_name} #{@last_name}"
      @email = "#{@first_name.downcase + @last_name.downcase}@mailinator.com"
      @password = "Teste@123456"
      @cpf = Faker::CPF.numeric
      @phone = "11999999999"
      @age = "31"
    end

    def login_page
      user_data
      button_signin.click
      dont_have_account.dont_have_account.click
      dont_have_account.signup_button.click
      input_user_modal.name.set @name
      input_user_modal.email.set @email
      input_user_modal.password.set @password
      input_user_modal.cpf.set @cpf
      input_user_modal.phone.set @phone
      input_user_modal.age.set @age
      input_user_modal.confirm_button.click
      close_view_button.close_modal.click   
    end

    def address_page 
      address_user = "zé Delivery "+ " - Escritório" + " do zé " + " " + " "
      input_user_address.fakeInput.click
      input_backdrop.address.click
      input_backdrop.address.send_keys address_user
      input_backdrop.address.click
      input_backdrop.autocomplete_card.click
      input_backdrop.checkbox_without_complement.click
      input_backdrop.address_details.click
    end

end
