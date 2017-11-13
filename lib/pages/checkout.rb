require 'capybara/dsl'

class Checkout
  include Capybara::DSL
  CHECKOUT_URL = 'http://automationpractice.com/index.php?controller=order'
  CHECKOUT_SIGN_IN_URL = 'http://automationpractice.com/index.php?controller=authentication&multi-shipping=0&display_guest_checkout=0&back=http%3A%2F%2Fautomationpractice.com%2Findex.php%3Fcontroller%3Dorder%26step%3D1%26multi-shipping%3D0'
  CHECKOUT_ADDRESS_URL = 'http://automationpractice.com/index.php?controller=order&step=1'
  CHECKOUT_PAYMENT_URL = 'http://automationpractice.com/index.php?controller=order&multi-shipping='
  ITEM_IMAGE_LINK = '//*[@id="product_1_1_0_32349"]/td[1]/a/img'

  def visit_checkout
    visit(CHECKOUT_URL)
  end

  def item_images
    ITEM_IMAGE_LINK
  end

end
