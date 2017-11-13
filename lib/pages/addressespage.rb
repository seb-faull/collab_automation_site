require 'capybara/dsl'

class AddressesPage
  include Capybara::DSL

#Page objects below
  MY_ADDRESSES_PAGE_URL = 'http://automationpractice.com/index.php?controller=addresses'
  UPDATE_ADDRESS_BUTTON_XPATH = '//*[@id="center_column"]/div[1]/div/div[1]/ul/li[9]/a[1]'
  DELETE_ADDRESS_BUTTON_XPATH = '//*[@id="center_column"]/div[1]/div/div[1]/ul/li[9]/a[2]'
  ADD_A_NEW_ADDRESS_BUTTON_XPATH = '//*[@id="center_column"]/div[2]/a'
  BACK_TO_YOUR_ACCOUNT_LINK_XPATH = '//*[@id="center_column"]/ul/li[1]/a'
  HOME_PAGE_LINK_XPATH = '//*[@id="center_column"]/ul/li[2]/a'


#Helper methods below
  def visit_my_addresses_page
    visit(MY_ADDRESSES_PAGE_URL)
  end

  def update_address_button
    find(UPDATE_ADDRESS_BUTTON_XPATH)
  end

  def click_update_address_button
    update_address_button.click
  end

  def delete_address_button
    find(DELETE_ADDRESS_BUTTON_XPATH)
  end

  def click_delete_address_button
    delete_address_button.click
  end

  def add_a_new_address_button
    find(ADD_A_NEW_ADDRESS_BUTTON_XPATH)
  end

  def click_add_a_new_address_button
    add_a_new_address_button.click
  end

  def back_to_your_account_link
    find(BACK_TO_YOUR_ACCOUNT_LINK_XPATH)
  end

  def click_back_to_your_account_link
    back_to_your_account_link.click
  end

  def home_page_link
    find(HOME_PAGE_LINK_XPATH)
  end

  def click_home_page_link
    home_page_link.click
  end

end
