Given("I am logged in and on the my account page") do
  @site = AutomationPracticeSite.new
  @site.login.visit_sign_in_page
  @site.login.input_user_email("test@spartaglobal.co")
  @site.login.input_user_password("password")
  @site.login.click_sign_in_submit_button
  expect(@site.myaccountpage.current_url).to eq 'http://automationpractice.com/index.php?controller=my-account'
  sleep 1
end

When("I click the my wishlists button") do
  @site.myaccountpage.click_wishlist_button
  sleep 1
end

Then("I will be redirected to the my wishlist page") do
  expect(@site.mywishlistpage.current_url).to eq 'http://automationpractice.com/index.php?fc=module&module=blockwishlist&controller=mywishlist'
  sleep 1
end

Given("I am logged in and on the my wishlist page") do
  @site = AutomationPracticeSite.new
  @site.login.visit_sign_in_page
  @site.login.input_user_email("test@spartaglobal.co")
  @site.login.input_user_password("password")
  @site.login.click_sign_in_submit_button
  @site.mywishlistpage.visit_wishlist_page
  expect(@site.myaccountpage.current_url).to eq 'http://automationpractice.com/index.php?fc=module&module=blockwishlist&controller=mywishlist'
  sleep 1
end

When("I enter a wishlist name and click save") do
  @listname = 'My Wishlist'
  @site.mywishlistpage.visit_wishlist_page
  @site.mywishlistpage.input_wishlist_name(@listname)
  @site.mywishlistpage.click_submit_button
end

Then("it will create a new wishlist with that name") do
  @site.mywishlistpage.click_my_wishlist(@listname)
  sleep 1
end

When("I click the delete icon on a wishlist") do
  @site.mywishlistpage.delete_wishlist
  sleep 1
end

Then("that wishlist will be deleted") do
  expect(@site.mywishlistpage.find_delete_wishlist_icon).to eq nil
end

Given("I am logged in and on a product page") do
  @site = AutomationPracticeSite.new
  @site.login.visit_sign_in_page
  @site.login.input_user_email("test@spartaglobal.co")
  @site.login.input_user_password("password")
  @site.login.click_sign_in_submit_button
  @site.productpage.visit_product_page
end

When("I click the add to wishlist button") do
  @site.productpage.click_add_to_wishlist_button
  sleep 1
end

Then("I will get an added to wishlist message") do
  @site.productpage.added_to_list_alert
  @site.productpage.added_to_list_alert.click
end

Given("I have added a product to my wishlist") do
  @site = AutomationPracticeSite.new
  @site.login.visit_sign_in_page
  @site.login.input_user_email("test@spartaglobal.co")
  @site.login.input_user_password("password")
  @site.login.click_sign_in_submit_button
  @site.productpage.visit_product_page
  @site.productpage.click_add_to_wishlist_button
  @site.productpage.added_to_list_alert.click
end

When("I go to my my wishlist page and click on my wishlist") do
  @listname = 'My Wishlist'
  @site.mywishlistpage.visit_wishlist_page
  @site.mywishlistpage.click_my_wishlist(@listname)
end

Then("I will see the product in my wishlist") do
  @site.mywishlistpage.find_wishlist_item
end

Given("I am not logged in and on a product page") do
  @site = AutomationPracticeSite.new
  @site.productpage.visit_product_page
end

Then("I will get an error message") do
  expect(@site.productpage.get_alert_message).to eq "You must be logged in to manage your wishlist."
end
