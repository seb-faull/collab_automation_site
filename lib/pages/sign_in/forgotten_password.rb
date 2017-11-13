require 'capybara/dsl'

class ForgotPassword

  include Capybara::DSL

    attr_accessor :forgot_confirmation_text

    def initialize
      @forgot_confirmation_text = 'A confirmation email has been sent to your address: test@spartaglobal.co'
    end

    FORGOT_CONFIRMATION = '//*[@id="center_column"]/div/p'
    FORGOT_PASSWORD_PAGE_LINK = 'http://automationpractice.com/index.php?controller=password'
    USERNAME_FIELD_ID = "#email"
    RETRIEVE_PASSWORD_BUTTON_XPATH = '//*[@id="form_forgotpassword"]/fieldset/p/button'
    ERROR_MESSAGE = '//*[@id="center_column"]/div/div/ol/li'


    def visit_forgotten_password_page
        find(FORGOT_PASSWORD_PAGE_LINK)
    end

    def username_field
        find(USERNAME_FIELD_ID)
    end

    def input_username(username)
        username_field.send_keys(username)
    end

    def retrieve_password_button
        find(:xpath, RETRIEVE_PASSWORD_BUTTON_XPATH)
    end

    def retrieve_password_button_click
        retrieve_password_button.click
    end

    def get_confirmation_message_text
      find(:xpath, FORGOT_CONFIRMATION).text
    end

    def wrong_email_error
      find(:xpath, ERROR_MESSAGE).text
    end

end
