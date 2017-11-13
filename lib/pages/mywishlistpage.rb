require 'capybara/dsl'

class MyWishListPage
  include Capybara::DSL

  # Page objects below
  WISHLIST_PAGE_LINK = 'http://automationpractice.com/index.php?fc=module&module=blockwishlist&controller=mywishlist'
  WISHLIST_FORM_ID = '#form_wishlist'
  WISHLIST_NAME_FIELD_ID = '#name'
  WISHLIST_SUBMIT_BUTTON_ID = '#submitWishlist'
  WISHLIST_DELETE_CLASS = '.wishlist_delete'
  PRODUCT_ITEM_ID = '#s_title'

  # Helper methods
  def visit_wishlist_page
    visit(WISHLIST_PAGE_LINK)
  end

  def wishlist_name_field
    find(WISHLIST_NAME_FIELD_ID)
  end

  def input_wishlist_name(listname)
    wishlist_name_field.send_keys(listname)
  end

  def submit_button
    find(WISHLIST_SUBMIT_BUTTON_ID)
  end

  def click_submit_button
    submit_button.click
  end

  def my_wishlist(listname)
    find('a', text: listname)
  end

  def click_my_wishlist(listname)
    my_wishlist(listname).click
  end

  def find_delete_wishlist_icon
    icons = page.all('td.wishlist_delete a.icon')
    icons[0]
  end

  def delete_wishlist
    find_delete_wishlist_icon.click
    page.driver.browser.switch_to.alert.accept
  end

  def find_wishlist_item
    find(PRODUCT_ITEM_ID)
  end

end
