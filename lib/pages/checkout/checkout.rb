require 'capybara/dsl'

class Checkout
  include Capybara::DSL
  CHECKOUT_URL = 'http://automationpractice.com/index.php?controller=order'
  CHECKOUT_SIGN_IN_URL = 'http://automationpractice.com/index.php?controller=authentication&multi-shipping=0&display_guest_checkout=0&back=http%3A%2F%2Fautomationpractice.com%2Findex.php%3Fcontroller%3Dorder%26step%3D1%26multi-shipping%3D0'
  CHECKOUT_ADDRESS_URL = 'http://automationpractice.com/index.php?controller=order&step=1'
  CHECKOUT_PAYMENT_URL = 'http://automationpractice.com/index.php?fc=module&module=cheque&controller=payment'
  CHECKOUT_PROCEED_BUTTON = '//*[@id="center_column"]/p[2]/a[1]'
  CHECKOUT_BUTTON_TWO = '//*[@id="center_column"]/form/p/button'
  DELETE_ITEM_BUTTON = '#3_13_0_0'
  ADD_CHECKOUT_COMMENT = '//*[@id="ordermsg"]/textarea'
  TOS_CHECKBOX = '#cgv'
  CHECKOUT_BUTTON_THREE = '//*[@id="form"]/p/button'
  PAYMENT_METHOD_BUTTON = '//*[@id="HOOK_PAYMENT"]/div[1]/div'
  CONFIRM_ORDER_BUTTON = '//*[@id="cart_navigation"]/button'
  ITEM_IMAGE_LINK = '//*[@id="product_1_1_0_32349"]/td[1]/a/img'
  CONFIRMATION_MESSAGE = '//*[@id="center_column"]/div'
  PAYMENT_PAGE_URL = 'http://automationpractice.com/index.php?controller=order-confirmation&id_cart=305763&id_module=3&id_order=24022&key=c6c8e91e2a7bd4ddd561873285ec2fe1'

  def visit_checkout
    visit(CHECKOUT_URL)
  end

  def checkout_button
    find(:xpath, CHECKOUT_PROCEED_BUTTON)
  end

  def delete_button
    find(DELETE_ITEM_BUTTON)
  end

  def checkout_field
    find(:xpath, ADD_CHECKOUT_COMMENT)
  end

  def input_checkout_field(comment)
    checkout_field.send_keys(comment)
  end

  def checkout_button_two
    find(:xpath, CHECKOUT_BUTTON_TWO)
  end

  def tos_checkbox
    find(TOS_CHECKBOX)
  end

  def checkout_button_three
    find(:xpath, CHECKOUT_BUTTON_THREE)
  end

  def payment_method_1
    find(:xpath, PAYMENT_METHOD_BUTTON)
  end

  def confirm_order
    find(:xpath, CONFIRM_ORDER_BUTTON)
  end

  def item_image
    find(:xpath, ITEM_IMAGE_LINK)
  end

  def address_url
    CHECKOUT_ADDRESS_URL
  end

  def find_checkout_url
    CHECKOUT_URL
  end

  def payment_method
    CHECKOUT_PAYMENT_URL
  end

  def confirmation_message
    find(:xpath, CONFIRMATION_MESSAGE)
  end

  def payment_url
    PAYMENT_PAGE_URL
  end
end
