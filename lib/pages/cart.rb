require 'capybara/dsl'

class Cart
  include Capybara::DSL

  #Page Objects
  #Item Page
  ITEM_PAGE_URL = 'http://automationpractice.com/index.php?id_product=1&controller=product'
  ADD_TO_CART_ID = '#add_to_cart'
  CONTINUE_SHOPPING = '//*[@id="layer_cart"]/div[1]/div[2]/div[4]/span'
  PROCEED_TO_CHECKOUT = '//*[@id="layer_cart"]/div[1]/div[2]/div[4]/a'
  #Category Page
  CATEGORY_PAGE_URL = 'http://automationpractice.com/index.php?id_category=5&controller=category'
  CATEGORY_PAGE_ADD_TO_CART = '//*[@id="center_column"]/ul/li/div/div[2]/div[2]/a[1]'
  #Home Page
  HOME_PAGE_URL = 'http://automationpractice.com/index.php'
  HOME_PAGE_ADD_TO_CART = '//*[@id="homefeatured"]/li[5]/div/div[2]/div[2]/a[1]'

  #Helper Methods
  #Loading relevant pages where user can add item to cart
    def load_item_page
      visit(ITEM_PAGE_URL)
    end

    def load_category_page
      visit(CATEGORY_PAGE_URL)
    end

    def load_homepage
      visit(HOME_PAGE_URL)
    end

  #Finding the add to cart button on the 3 pages
    def add_to_cart_button_item_page
      find(ADD_TO_CART_ID)
    end

    def add_to_cart_button_category_page
      find(CATEGORY_PAGE_ADD_TO_CART)
    end

    def add_to_cart_button_homepage
      find(HOME_PAGE_ADD_TO_CART)
    end

  #Clicking on the add to cart buttons
    def click_item_page
      add_to_cart_button_item_page.click
    end

    def click_category_page
      add_to_cart_button_category_page.click
    end

    def click_home_page
      add_to_cart_button_homepage.click
    end

  #Finding and clicking on continue shopping button
    def continue_shopping_button
      find(:xpath, CONTINUE_SHOPPING)
    end

    def click_continue_shopping_button
      continue_shopping_button.click()
    end

  #Finding and clicking on proceed to checkout button
    def proceed_to_checkout_button
      find(:xpath, PROCEED_TO_CHECKOUT)
    end

    def click_proceed_to_checkout_button
      proceed_to_checkout_button.click()
    end

end
