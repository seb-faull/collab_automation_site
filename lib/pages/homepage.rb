require 'capybara/dsl'

class Homepage
  include Capybara::DSL

  # Page objects below
  HOMEPAGE_URL = 'http://automationpractice.com/index.php'
  SITE_LOGO = '//*[@id="header_logo"]/a/img'
  SIGN_IN_LINK_ID = '.login'
  CONTACT_US_LINK_ID = '#contact-link'
  SEARCH_BAR = '#search_query_top'
  SEARCH_BAR_BUTTON = '//*[@id="searchbox"]/button'
  CART = '//*[@id="header"]/div[3]/div/div/div[3]/div/a'
  TOP_SALES_IMG = '//*[@id="header"]/div[1]/div/div/a/img'
  HOMEPAGE_SLIDER = '#homepage-slider'
  SALE_BUTTON_2 = '//*[@id="htmlcontent_top"]/ul/li[1]/a/img'
  SALE_BUTTON_3 = '//*[@id="htmlcontent_top"]/ul/li[2]/a/img'
  TOGGLE_LEFT = '//*[@id="home-page-tabs"]/li[1]/a'
  TOGGLE_RIGHT = '//*[@id="home-page-tabs"]/li[2]/a'
  PRODUCT_LIST = '//*[@id="homefeatured"]'
  BOT_IMG1 = '//*[@id="htmlcontent_home"]/ul/li[1]/a/img'
  BOT_IMG2 = '//*[@id="htmlcontent_home"]/ul/li[2]/a/img'
  BOT_IMG3 = '//*[@id="htmlcontent_home"]/ul/li[3]/a/img'
  BOT_IMG4 = '//*[@id="htmlcontent_home"]/ul/li[4]/a/img'
  BOT_IMG5 = '//*[@id="htmlcontent_home"]/ul/li[5]/a/img'

  # Helper methods
  def visit_home_page
    visit(HOMEPAGE_URL)
  end

  def site_logo
    find(:xpath, SITE_LOGO)
  end

  def search_bar
    find(SEARCH_BAR)
  end

  def search_button
    find(:xpath, SEARCH_BAR_BUTTON)
  end

  def contact_us_link
    find(CONTACT_US_LINK_ID)
  end

  def click_contact_us_link
    contact_us_link.click
  end

  def cart
    find(:xpath, CART)
  end

  def sign_in_link
    find(SIGN_IN_LINK_ID)
  end

  def click_sign_in_link
    sign_in_link.click
  end

  def top_promotion_link
    find(:xpath, TOP_SALES_IMG)
  end

  def slider
    find(HOMEPAGE_SLIDER)
  end

  def products
    find(:xpath, PRODUCT_LIST)
  end

  def percentage_button2
    find(:xpath, SALE_BUTTON_2)
  end

  def percentage_button3
    find(:xpath, SALE_BUTTON_3)
  end

  def toggle_left
    find(:xpath, TOGGLE_LEFT)
  end

  def toggle_right
    find(:xpath, TOGGLE_RIGHT)
  end

  def bot_img_1
    find(:xpath, BOT_IMG1)
  end

  def bot_img_2
    find(:xpath, BOT_IMG2)
  end

  def bot_img_3
    find(:xpath, BOT_IMG3)
  end

  def bot_img_4
    find(:xpath, BOT_IMG4)
  end

  def bot_img_5
    find(:xpath, BOT_IMG5)
  end







end
