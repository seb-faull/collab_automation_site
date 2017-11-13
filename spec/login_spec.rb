require 'spec_helper'

describe 'webpage' do

    before(:all) do
        @automation = AutomationPracticeSite.new
    end

    it "should create account" do
        @automation.login.visit_sign_in_page
        @automation.login.input_new_user_email('brian@sparta.com')
        @automation.login.click_create_submit_button
        sleep 3
    end


    it "should sign in" do
        @automation.login.visit_sign_in_page
        @automation.login.input_user_email("test@spartaglobal.co")
        @automation.login.input_user_password("password")
        @automation.login.click_sign_in_submit_button
    end

end