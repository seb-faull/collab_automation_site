require 'capybara/dsl'

class Login
    include Capybara::DSL

    SIGN_IN_PAGE_LINK = 'http://automationpractice.com/index.php?controller=authentication&back=my-account'
    CREATE_USER_FIELD_ID = '#email_create'
    USEREMAIL_FIELD_ID = '#email'
    PASSWORD_FIELD_ID = '#passwd'
    CREATE_BUTTON_ID = '#SubmitCreate'
    SING_IN_BUTTON_ID = '#SubmitLogin'
    FORGOT_PASSWORD_LINK = 'http://automationpractice.com/index.php?controller=password'
    ERROR_PAGE_URL = 'http://automationpractice.com/index.php?controller=authentication'
    ERROR_MESSAGE_XPATH = '//*[@id="center_column"]/div[1]/ol/li'

    def visit_sign_in_page
        visit(SIGN_IN_PAGE_LINK)
    end

    def create_user_field
        find(CREATE_USER_FIELD_ID)
    end

    def input_new_user_email(email)
        create_user_field.send_keys(email)
    end

    def create_submit_button
        find(CREATE_BUTTON_ID)
    end

    def click_create_submit_button
        create_submit_button.click
    end

    def sign_in_user_field
        find(USEREMAIL_FIELD_ID)
    end

    def input_user_email(email)
        sign_in_user_field.send_keys(email)
    end

    def sign_in_password
        find(PASSWORD_FIELD_ID)
    end

    def input_user_password(password)
        sign_in_password.send_keys(password)
    end

    def sign_in_submit_button
        find(SING_IN_BUTTON_ID)
    end

    def click_sign_in_submit_button
        sign_in_submit_button.click
    end

    def forgot_password
        find(FORGOT_PASSWORD_LINK)
    end

    def forgot_passwork_click
        click_link('Forgot your password?')
    end

    def get_error_message
      find(:xpath, ERROR_MESSAGE_XPATH).text
    end

end
