require 'spec_helper'

describe 'homepage' do

  before(:all) do
    @auto_site = AutomationPracticeSite.new
  end

  it 'should have a clickable "contact us" link' do
    @auto_site.homepage.visit_home_page
    @auto_site.homepage.click_contact_us_link
  end

  it 'should have a clickable "log in" link' do
    @auto_site.homepage.visit_home_page
    @auto_site.homepage.click_sign_in_link
  end

  it 'should have a sales promotion bar at the top of the screen' do
    @auto_site.homepage.top_promotion_link.visible?
  end

  it 'should have the site logo on the page' do
    @auto_site.homepage.site_logo.visible?
  end

  it 'should have cart image and menu on the page' do
    @auto_site.homepage.cart
  end

  it 'should have a product list' do
    # @auto_site.homepage.products
  end

  # SEARCH BAR TESTS
  context 'The page should have a functioning search bar' do
    it 'should have a search text field' do
      @auto_site.homepage.search_bar.visible?
    end

    it 'should have a search submit button' do
      @auto_site.homepage.search_button.visible?
    end

    it 'should contain the correct query' do
      @auto_site.homepage.fill_in('search_query', :with => 'red')
      expect(@auto_site.homepage.find_field('search_query').value).to eq('red')
    end

    it 'has a url containing the correct query, post-click' do
      @auto_site.homepage.find(:xpath, '//*[@id="searchbox"]/button').click
    end
  end

  it 'should have a 3-image slider' do
    @auto_site.homepage.visit_home_page
    @auto_site.homepage.slider.visible?
  end

  it 'should have %off image links' do
    @auto_site.homepage.percentage_button2
    @auto_site.homepage.percentage_button3
  end

  it 'should have 5 working trend images' do
    @auto_site.homepage.bot_img_1
    @auto_site.homepage.bot_img_2
    @auto_site.homepage.bot_img_3
    @auto_site.homepage.bot_img_4
    @auto_site.homepage.bot_img_5
  end

  it 'should have toggle buttons' do
    @auto_site.homepage.toggle_left
    @auto_site.homepage.toggle_right
  end




end
