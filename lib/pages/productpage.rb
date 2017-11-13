require 'capybara/dsl'

class ProductPage
  include Capybara::DSL

  # Page objects below
  PRODUCT_PAGE_URL = 'http://automationpractice.com/index.php?id_product=1&controller=product'
  WISHLIST_PAGE_LINK = 'http://automationpractice.com/index.php?id_product=1&controller=product'
  WISHLIST_BUTTON_ID = '#wishlist_button'
  ADDED_TO_LIST_X_CLASS = '.fancybox-close'
  LIST_ALERT_CLASS = '.fancybox-error'

  # Helper methods
  def visit_product_page
    visit(PRODUCT_PAGE_URL)
  end

  def wishlist_button
    find(WISHLIST_BUTTON_ID)
  end

  def click_add_to_wishlist_button
    wishlist_button.click
  end

  def added_to_list_alert
    find(ADDED_TO_LIST_X_CLASS)
  end

  def close_added_to_list_alert
    added_to_list_alert.click
  end

  def get_alert_message
    find(LIST_ALERT_CLASS).text
  end

end
