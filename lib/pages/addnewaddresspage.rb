require 'capybara/dsl'

class AddNewAddressPage
  include Capybara::DSL

#Page objects below
  ADD_NEW_ADDRESS_PAGE_URL = 'http://automationpractice.com/index.php?controller=address'
  FIRST_NAME_INPUT_FIELD_ID = '#firstname'
  LAST_NAME_INPUT_FIELD_ID = '#lastname'
  COMPANY_NAME_INPUT_FIELD_ID = '#company'
  ADDRESS_INPUT_FIELD_ID = '#address1'
  ADDRESS_LINE_2_INPUT_FIELD_ID = '#address2'
  CITY_INPUT_FIELD_ID = '#city'
  STATE_SELECTOR_ID = '#id_state'
  POSTCODE_INPUT_FIELD_ID = '#postcode'
  COUNTRY_SELECTOR_ID = '#id_country'
  HOME_PHONE_FIELD_ID = '#phone'
  MOBILE_PHONE_FIELD_ID = '#phone_mobile'
  ADDITIONAL_INFORMATION_FIELD_ID = '#other'
  ASSIGN_AN_ADDRESS_ALIAS_FIELD_ID = '#alias'
  SAVE_ADDRESS_LINK = '#submitAddress'

  #Helper methods below
    def visit_add_new_address_page
      visit(ADD_NEW_ADDRESS_PAGE_URL)
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

    def find_company_name_field
      find(COMPANY_NAME_INPUT_FIELD_ID)
    end

    def input_company_name_field(company)
      find_company_name_field.send_keys(company)
    end

    def find_address_field
      find(ADDRESS_INPUT_FIELD_ID)
    end

    def input_address_field(address)
      find_address_field.send_keys(address)
    end

    def find_address_line_2_field
      find(ADDRESS_LINE_2_INPUT_FIELD_ID)
    end

    def input_address_line_2_field(address_line_2)
      find_address_line_2_field.send_keys(address_line_2)
    end

    def find_city_field
      find(CITY_INPUT_FIELD_ID)
    end

    def input_city_field(city)
      find_city_field.send_keys(city)
    end

    def find_state_selector
      find(STATE_SELECTOR_ID)
    end

    def select_state(state)
      find_state_selector.click.select(state)
    end

    def find_postcode_field
      find(POSTCODE_INPUT_FIELD_ID)
    end

    def input_postcode_field(postcode)
      find_postcode_field.send_keys(postcode)
    end

    def find_country_selector
      find(COUNTRY_SELECTOR_ID)
    end

    def select_country(country)
      find_country_selector.select_by(country)
    end

    def find_home_phone_field
      find(HOME_PHONE_FIELD_ID)
    end

    def input_home_phone_field(home_phone)
      find_home_phone_field.send_keys(home_phone)
    end

    def find_mobile_phone_field
      find(MOBILE_PHONE_FIELD_ID)
    end

    def input_mobile_phone_field(mobile_phone)
      find_mobile_phone_field.send_keys(mobile_phone)
    end

    def find_additional_information_field
      find(ADDITIONAL_INFORMATION_FIELD_ID)
    end

    def input_additional_information_field(additional_information)
      find_additional_information_field.send_keys(additional_information)
    end

    def find_assign_an_address_alias_field
      find(ASSIGN_AN_ADDRESS_ALIAS_FIELD_ID)
    end

    def input_assign_an_address_alias_field(alias_address)
      find_assign_an_address_alias_field(alias_address)
    end

    def find_save_address_link
      find(SAVE_ADDRESS_LINK)
    end

    def click_save_address_link
      find_save_address_link.click
    end

end
