Given("that I am on the t-shirt item page") do
  @cart = AutomationPracticeSite.new.cart
  @cart.load_item_page
  expect(@cart.current_url).to eq('http://automationpractice.com/index.php?id_product=1&controller=product')
end

When("I click on the add to cart button") do
  expect(@cart.add_to_cart_button_item_page).not_to be nil
  @cart.click_item_page
end

And("I click on the proceed to checkout button") do
  expect(@cart.proceed_to_checkout_button).not_to be nil
  @cart.click_proceed_to_checkout_button
end

Then("I will go to the checkout page") do
  expect(@cart.current_url).to eq('http://automationpractice.com/index.php?controller=order')
end

When("I click on the return to shopping button") do
  expect(@cart.continue_shopping_button).not_to be nil
  @cart.click_continue_shopping_button
end

Then("I will go back to the t-shirt item page") do
  expect(@cart.current_url).to eq('http://automationpractice.com/index.php?id_product=1&controller=product')
end
