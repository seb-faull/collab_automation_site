
Given("I am signed in on the checkout page and have an item in the cart") do
  @checkout = AutomationPracticeSite.new
  @checkout.homepage.visit_home_page
  @checkout.homepage.click_sign_in_link
  sleep 3
  @checkout.login.input_user_email('test@spartaglobal.co')
  @checkout.login.input_user_password('password')
  @checkout.login.click_sign_in_submit_button
  sleep 3

  @cart = AutomationPracticeSite.new.cart

  @cart.load_item_page
  @cart.click_item_page
  sleep 3


  @checkout.checkout.visit_checkout
  sleep 3
end


Then("I should see the item image in the product space") do
  expect(@checkout.checkout.item_image.visible?).to eql true
  sleep 2
end

When("I click the proceed button") do
  @checkout.checkout.checkout_button.click
  sleep 3
end

Then("I go to the address confirmation page") do
  expect(@checkout.checkout.address_url).to eql ("http://automationpractice.com/index.php?controller=order&step=1")
end

And("I enter a comment") do
  @checkout.checkout.input_checkout_field('AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA')
  sleep 3
end

And("I click proceed") do
  @checkout.checkout.checkout_button_two.click
  sleep 3
end

Then("I will go to the shipping page") do
expect(@checkout.checkout.find_checkout_url).to eql ("http://automationpractice.com/index.php?controller=order")
end

When("I check the terms of service checkbox") do
  @checkout.checkout.tos_checkbox.click
  @checkout.checkout.checkout_button_three.click

  sleep 3
end

And("I am on the payment confirmation page") do
  expect(@checkout.checkout.payment_method).to eql ("http://automationpractice.com/index.php?fc=module&module=cheque&controller=payment")
end

Then("I will be able to confirm my order") do
  @checkout.checkout.payment_method_1.click
  sleep 3
  @checkout.checkout.confirm_order.click
  sleep 3
end

And("I should be able to see a confirmation message")do
  expect(@checkout.checkout.payment_url).to eql ("http://automationpractice.com/index.php?controller=order-confirmation&id_cart=305763&id_module=3&id_order=24022&key=c6c8e91e2a7bd4ddd561873285ec2fe1")
  expect(@checkout.checkout.confirmation_message.visible?).to eql true
end
