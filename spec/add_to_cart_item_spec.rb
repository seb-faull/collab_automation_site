require 'spec_helper'

describe 'testing add to cart button on item page' do

  before(:all) do
    @cart = Cart.new
  end

  context 'click on add to cart and then proceed to checkout' do

    it 'should open the correct item page' do
      @cart.load_item_page
      expect(@cart.current_url).to eq('http://automationpractice.com/index.php?id_product=1&controller=product')
    end

    it 'should find and click on the add to cart button' do
      @cart.click_item_page
      @cart.continue_shopping_button
      sleep 3
    end

    it 'should find and click on the proceed to checkout button' do
      @cart.click_proceed_to_checkout_button
      sleep 3
    end

  end

end
