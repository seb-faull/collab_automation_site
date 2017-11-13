require 'spec_helper'

describe 'checkout page test' do

  before(:all) do
    @checkout = AutomationPracticeSite.new
    @automation = AutomationPracticeSite.new
    @cart = Cart.new
  end
  
  it "should sign in" do
      @automation.login.visit_sign_in_page
      @automation.login.input_user_email("test@spartaglobal.co")
      @automation.login.input_user_password("password")
      @automation.login.click_sign_in_submit_button
      sleep 10
end

  it 'should identify we are on the right page' do
    @checkout.checkout.visit_checkout
    sleep 3
  end


  it 'should click the checkout button and proceed to next step' do
    @checkout.checkout.checkout_button.click
    sleep 3
  end

  it 'should add a message in the order comments' do
    @checkout.checkout.input_checkout_field('AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA')
    sleep 3
  end

  it 'should click the checkout button again and proceed to next step' do
    @checkout.checkout.checkout_button_two.click
    sleep 3
  end

  it 'should click the terms of service checkbox' do
    @checkout.checkout.tos_checkbox.click
    @checkout.checkout.checkout_button_three.click
    sleep 3
  end

  it 'should click a payment method' do
    @checkout.checkout.payment_method_1.click
    sleep 3
  end

  it 'should confirm the order' do
    @checkout.checkout.confirm_order.click
    sleep 3
  end
end
