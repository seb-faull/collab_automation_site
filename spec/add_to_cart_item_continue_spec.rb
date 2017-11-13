require 'spec_helper'

describe 'testing add to cart button on item page' do

  before(:all) do
    @cart = Cart.new
  end

  context 'click to add to cart and then continue shopping' do

    it 'should open the correct item page' do
      @cart.load_item_page
      expect(@cart.current_url).to eq('http://automationpractice.com/index.php?id_product=1&controller=product')
    end

    it 'should find and click on the add to cart button' do
      @cart.click_item_page
      sleep 5
    end

    it 'should find and click on the continue shopping button' do
      @cart.click_continue_shopping_button
      sleep 2
    end

  end
end
