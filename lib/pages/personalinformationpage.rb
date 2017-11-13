require 'capybara/dsl'

class AddNewAddressPage
  include Capybara::DSL

#Page objects below
  PERSONAL_INFORMATION_PAGE_URL = 'http://automationpractice.com/index.php?controller=identity'
  MALE_GENDER_BUTTON_ID = '#id_gender1'
  FEMALE_GENDER_BUTTON_ID = '#id_gender2'
  FIRST_NAME_INPUT_FIELD_ID = '#firstname'
  LAST_NAME_INPUT_FIELD_ID = '#lastname'
  EMAIL_INPUT_FIELD_ID = '#email'
  DATE_DOB_SELECTOR_ID = '#days'
  MONTH_DOB_SELECTOR_ID = '#months'
  YEAR_DOB_SELECTOR_ID = '#years'
  CURRENT_PASSWORD_FIELD_ID = '#old_passwd'
  NEW_PASSWORD_FIELD_ID = '#passwd'
  CONFIRMATION_PASSWORD_FIELD_ID = '#confirmation'
  NEWSLETTER_CHECKBOX_ID = '#newsletter'
  SPECIAL_OFFER_CHECKBOX_ID = '#optin'

  #Helper methods below
    def visit_personal_information_page
      visit(PERSONAL_INFORMATION_PAGE_URL)
    end

    def find_male_gender_button
      find(MALE_GENDER_BUTTON_ID)
    end

    def select_male_gender_button
      find_male_gender_button.click
    end

    def find_female_gender_button
      find(FEMALE_GENDER_BUTTON_ID)
    end

    def select_female_gender_button
      find_female_gender_button.click
    end

    def find_first_name_field
      find(FIRST_NAME_INPUT_FIELD_ID)
    end

    def input_first_name_field(firstname)
      find_first_name_field.send_keys(firstname)
    end

    def find_last_name_field
      find(LAST_NAME_INPUT_FIELD_ID)
    end

    def input_first_name_field(lastname)
      find_last_name_field.send_keys(lastname)
    end

    def find_email_field
      find(EMAIL_INPUT_FIELD_ID)
    end

    def input_email_field(email)
      find_email_field.send_keys(email)
    end

    def find_date_dob_selector
      find(DATE_DOB_SELECTOR_ID)
    end

    def select_date_dob_selector(date)
      find_date_dob_selector.select_by(date)
    end

    def find_month_dob_selector
      find(MONTH_DOB_SELECTOR_ID)
    end

    def select_month_dob_selector(month)
      find_month_dob_selector.select_by(month)
    end

    def find_year_dob_selector
      find(YEAR_DOB_SELECTOR_ID)
    end

    def select_year_dob_selector(year)
      find_year_dob_selector.select_by(year)
    end

    def find_current_password_field
      find(CURRENT_PASSWORD_FIELD_ID)
    end

    def input_current_password_field(current_password)
      find_current_password_field.send_keys(current_password)
    end

    def find_new_password_field
      find(NEW_PASSWORD_FIELD_ID)
    end

    def input_new_password_field(new_password)
      find_new_password_field.send_keys(new_password)
    end

    def find_confirmation_password_field
      find(CONFIRMATION_PASSWORD_FIELD_ID)
    end

    def input_confirmation_password_field(confirmation_password)
      find_confirmation_password_field.send_keys(confirmation_password)
    end

    def find_newsletter_checkbox
      find(NEWSLETTER_CHECKBOX_ID)
    end

    def select_newsletter_checkbox
      find_newsletter_checkbox.click
    end

    def find_special_offer_checkbox
      find(SPECIAL_OFFER_CHECKBOX_ID)
    end

    def select_special_offer_checkbox
      find_special_offer_checkbox.click
    end


end
