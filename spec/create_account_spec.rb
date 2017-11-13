require 'spec_helper'

describe 'webpage' do

    before(:all) do
        @automation = AutomationPracticeSite.new
    end

    it "should vist the sign in page and click create account button" do
        @automation.login.visit_sign_in_page
        sleep 5
        @automation.login.input_new_user_email('code@hotmail.com')
        @automation.login.click_create_submit_button
        sleep 5
    end

    it "should create an account" do
        @automation.createaccount.choose_title_button('Mrs.')
        @automation.createaccount.input_customer_firstname('Zara')
        @automation.createaccount.input_customer_lastname('Swanson')
        @automation.createaccount.input_password('password')
        @automation.createaccount.choose_day('3')
        @automation.createaccount.choose_months('February')
        @automation.createaccount.choose_year('1995')
        @automation.createaccount.check_newsletter
        @automation.createaccount.check_special_offers
        @automation.createaccount.input_address_firstname('Zara')
        @automation.createaccount.input_address_lastname('Swanson')
        @automation.createaccount.input_company_field('Sparta')
        @automation.createaccount.input_address_line_one('001 Code Street')
        @automation.createaccount.input_address_line_two('Ruby High Rise')
        @automation.createaccount.input_city('London')
        @automation.createaccount.choose_state('Hawaii')
        @automation.createaccount.input_postcode('96704')
        @automation.createaccount.choose_country('United States')
        @automation.createaccount.input_additional('I regret choosing the create account page')
        @automation.createaccount.input_home_phone('02074713422')
        @automation.createaccount.input_mobile_phone('07947318293')
        @automation.createaccount.input_address_alias('home address')
        @automation.createaccount.click_register_button
        sleep 5
    end
end
