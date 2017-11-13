require 'capybara/dsl'

class MyAccountPage
  include Capybara::DSL

#Page objects below
  ACCOUNT_PAGE_LINK = 'http://automationpractice.com/index.php?controller=my-account'
  MY_WISHLIST_BUTTON_TEXT = 'My wishlists'
  MY_ACCOUNT_PAGE_URL = 'http://automationpractice.com/index.php?controller=my-account'
  MY_ADDRESSES_LINK_XPATH = '//*[@id="center_column"]/div/div[1]/ul/li[3]/a'
  MY_ADDRESSES_LINK_TEXT = 'My addresses'
  MY_PERSONAL_INFORMATION_LINK_XPATH = '//*[@id="center_column"]/div/div[1]/ul/li[4]/a'

#Helper methods below
  def my_wishlist_button
    find('a', :text => MY_WISHLIST_BUTTON_TEXT)
  end

  def click_wishlist_button
    my_wishlist_button.click
  end

  def visit_my_account_page
    visit(MY_ACCOUNT_PAGE_URL)
  end

  def my_addresses_link
    find('a', :text => MY_ADDRESSES_LINK_TEXT)
  end

  def click_my_addresses_link
    my_addresses_link.click
  end

  def my_personal_information_link
    find(MY_PERSONAL_INFORMATION_LINK_XPATH)
  end

  def click_my_personal_information_link
    my_personal_information_link.click
  end

end
