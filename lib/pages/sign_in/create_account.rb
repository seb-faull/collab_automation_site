require 'capybara/dsl'

class CreateAccount

  include Capybara::DSL

  MR_TITLE_BUTTON_ID = '#id_gender1'
  MRS_TITLE_BUTTON_ID = '#id_gender2'
  CUSTOMER_FIRSTNAME_FIELD_ID = '#customer_firstname'
  CUSTOMER_LASTNAME_FIELD_ID = '#customer_lastname'
  EMAIL_FIELD_ID = '#email'
  PASSWORD_FIELD_ID = '#passwd'
  DAY_DROPDOWN_ID = '#days'
  MONTH_DROPDOWN_ID = '#months'
  YEAR_DROPDOWN_ID = '#years'
  NEWSLETTER_CHECKBOX_ID ='#newsletter'
  SPECIAL_OFFERS_CHECKBOX_ID = '#optin'
  ADDRESS_FIRSTNAME_FIELD_ID = '#firstname'
  ADDRESS_LASTNAME_FIELD_ID = '#lastname'
  COMPANY_FIELD_ID = '#company'
  ADDRESS_LINE_ONE_FIELD_ID = '#address1'
  ADDRESS_LINE_TWO_ID = '#address2'
  CITY_FIELD_ID = '#city'
  STATE_DROPDOWN_ID = '#id_state'
  POSTCODE_FIELD_ID = '#postcode'
  COUNTRY_DROPDOWN_ID = '#id_country'
  ADDITIONAL_INFO_FIELD_ID = '#other'
  HOME_PHONE_FIELD_ID = '#phone'
  MOBILE_PHONE_FIELD_ID = '#phone_mobile'
  ADDRESS_ALIAS_FIELD_ID = '#alias'
  REGISTER_ACCOUNT_BUTTON_ID = '#submitAccount'
  POSTCODE_ERROR_MESSAGE = '//*[@id="center_column"]/div/ol/li'
  SHORT_PASSWORD_ERROR_MESSAGE = '//*[@id="center_column"]/div/ol/li[1]/b'

  def choose_title_button(title)
    choose(title)
  end

  def customer_firstname_field
    find(CUSTOMER_FIRSTNAME_FIELD_ID)
  end

  def input_customer_firstname(firstname)
    customer_firstname_field.send_keys(firstname)
  end

  def customer_lastname_field
      find(CUSTOMER_LASTNAME_FIELD_ID)
  end

  def input_customer_lastname(lastname)
    customer_lastname_field.send_keys(lastname)
  end

  def email_field
    find(EMAIL_FIELD_ID)
  end

  def input_email(email)
    email_field.send_keys(email)
  end

  def password_field
      find(PASSWORD_FIELD_ID)
  end

  def input_password(password)
    password_field.send_keys(password)
  end

  def day_dropdown
    find(DAY_DROPDOWN_ID)
  end

  def click_day_dropdown
    day_dropdown.click
  end

  def choose_day(days)
    click_day_dropdown.select(days)
  end

  def months_dropdown
    find(MONTH_DROPDOWN_ID)
  end

  def click_months_dropdown
    months_dropdown.click
  end

  def choose_months(months)
    click_months_dropdown.select(months)
  end

  def year_dropdown
    find(YEAR_DROPDOWN_ID)
  end

  def click_year_dropdown
    year_dropdown.click
  end

  def choose_year(years)
    click_year_dropdown.select(years)
  end

  def newsletter_checbox
    find(NEWSLETTER_CHECKBOX_ID)
  end

  def check_newsletter
    newsletter_checbox.set(true)
  end

  def special_offers_checkbox
    find(SPECIAL_OFFERS_CHECKBOX_ID)
  end

  def check_special_offers
    special_offers_checkbox.set(true)
  end

  def address_firstname_field
    find(ADDRESS_FIRSTNAME_FIELD_ID)
  end

  def input_address_firstname(firstname)
    address_firstname_field.send_keys(firstname)
  end

  def address_lastname_field
    find(ADDRESS_LASTNAME_FIELD_ID)
  end

  def input_address_lastname(lastname)
    address_lastname_field.send_keys(lastname)
  end

  def company_field
    find(COMPANY_FIELD_ID)
  end

  def input_company_field(company)
    company_field.send_keys(company)
  end

  def address_line_one_field
      find(ADDRESS_LINE_ONE_FIELD_ID)
  end

  def input_address_line_one(street)
    address_line_one_field.send_keys(street)
  end

  def address_line_two_field
    find(ADDRESS_LINE_TWO_ID)
  end

  def input_address_line_two(apartment)
    address_line_two_field.send_keys(apartment)
  end

  def city_field
    find(CITY_FIELD_ID)
  end

  def input_city(city)
    city_field.send_keys(city)
  end

  def state_dropdown
      find(STATE_DROPDOWN_ID)
  end

  def click_state_dropdown
    state_dropdown.click
  end

  def choose_state(state)
    click_state_dropdown.select(state)
  end

  def postcode_field
    find(POSTCODE_FIELD_ID)
  end

  def input_postcode(postcode)
    postcode_field.send_keys(postcode)
  end

  def country_dropdown
    find(COUNTRY_DROPDOWN_ID)
  end

  def click_country_dropdown
    country_dropdown.click
  end

  def choose_country(country)
    click_country_dropdown.select(country)
  end

  def additional_info_field
    find(ADDITIONAL_INFO_FIELD_ID)
  end

  def input_additional(other)
    additional_info_field.send_keys(other)
  end

  def home_phone_number_field
    find(HOME_PHONE_FIELD_ID)
  end

  def input_home_phone(home)
    home_phone_number_field.send_keys(home)
  end

  def mobile_phone_field
    find(MOBILE_PHONE_FIELD_ID)
  end

  def input_mobile_phone(mobile)
    mobile_phone_field.send_keys(mobile)
  end

  def address_alias_field
    find(ADDRESS_ALIAS_FIELD_ID)
  end

  def input_address_alias(additonal)
    address_alias_field.send_keys(additonal)
  end

  def register_button
    find(REGISTER_ACCOUNT_BUTTON_ID)
  end

  def click_register_button
    register_button.click
  end

  def postcode_error
    find(:xpath, POSTCODE_ERROR_MESSAGE).text
  end

  def short_password_error
    find(:xpath, SHORT_PASSWORD_ERROR_MESSAGE).text
  end
end
