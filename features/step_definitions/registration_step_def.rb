Given("I am on the register page") do
  @automation = AutomationPracticeSite.new
  @automation.homepage.visit_home_page
  @automation.homepage.click_sign_in_link
end

And("I enter my email address and click the link to register") do
  @automation.login.input_new_user_email('finaltestemail@hotmail.com')
  @automation.login.click_create_submit_button
end

When("I input the correct details") do
  @automation.createaccount.choose_title_button('Mrs.')
  @automation.createaccount.input_customer_firstname('Cup')
  @automation.createaccount.input_customer_lastname('Plate')
  @automation.createaccount.input_password('password')
  @automation.createaccount.choose_day('30')
  @automation.createaccount.choose_months('April')
  @automation.createaccount.choose_year('1971')
  @automation.createaccount.check_newsletter
  @automation.createaccount.check_special_offers
  @automation.createaccount.input_address_firstname('Cup')
  @automation.createaccount.input_address_lastname('Plate')
  @automation.createaccount.input_company_field('Sparta')
  @automation.createaccount.input_address_line_one('210 Code Street')
  @automation.createaccount.input_address_line_two('Ruby High Rise')
  @automation.createaccount.input_city('Kailua')
  @automation.createaccount.choose_state('Hawaii')
  @automation.createaccount.input_postcode('96704')
  @automation.createaccount.choose_country('United States')
  @automation.createaccount.input_additional('I regret choosing the create account page')
  @automation.createaccount.input_home_phone('02074713472')
  @automation.createaccount.input_mobile_phone('07947318493')
  @automation.createaccount.input_address_alias('home address')
end


Then("I will have an account and be directed to the my account page") do
  @automation.createaccount.click_register_button
  expect(@automation.myaccountpage.current_url).to eq 'http://automationpractice.com/index.php?controller=my-account'
end


Given("I am on the register an account page") do
  @automation = AutomationPracticeSite.new
  @automation.homepage.visit_home_page
  @automation.homepage.click_sign_in_link
end

And("I enter a correct email address and click the link to register") do
  @automation.login.input_new_user_email('howmanymoretimes@hotmail.com')
  @automation.login.click_create_submit_button
end

When("I input the correct details and an invalid postcode") do
  @automation.createaccount.choose_title_button('Mrs.')
  @automation.createaccount.input_customer_firstname('Rain')
  @automation.createaccount.input_customer_lastname('Blue')
  @automation.createaccount.input_password('password')
  @automation.createaccount.choose_day('30')
  @automation.createaccount.choose_months('April')
  @automation.createaccount.choose_year('1989')
  @automation.createaccount.check_newsletter
  @automation.createaccount.check_special_offers
  @automation.createaccount.input_address_firstname('Rain')
  @automation.createaccount.input_address_lastname('Blue')
  @automation.createaccount.input_company_field('Sparta')
  @automation.createaccount.input_address_line_one('200 Code Street')
  @automation.createaccount.input_address_line_two('Ruby High Rise')
  @automation.createaccount.input_city('Kailua')
  @automation.createaccount.choose_state('Hawaii')
  @automation.createaccount.input_postcode('TV')
  @automation.createaccount.choose_country('United States')
  @automation.createaccount.input_additional('I regret choosing the create account page')
  @automation.createaccount.input_home_phone('02074713472')
  @automation.createaccount.input_mobile_phone('07947318493')
  @automation.createaccount.input_address_alias('home address')
end

Then("An error message will appear on the page") do
  @automation.createaccount.click_register_button
  expect(@automation.createaccount.postcode_error).to eq 'The Zip/Postal code you\'ve entered is invalid. It must follow this format: 00000'
end

Given("I am on the register account page") do
  @automation = AutomationPracticeSite.new
  @automation.homepage.visit_home_page
  @automation.homepage.click_sign_in_link
end


And("I enter a correct email address and click the register link") do
  @automation.login.input_new_user_email('moretests@hotmail.com')
  @automation.login.click_create_submit_button
end

When("I input the correct details and a short password") do
  @automation.createaccount.choose_title_button('Mrs.')
  @automation.createaccount.input_customer_firstname('Rain')
  @automation.createaccount.input_customer_lastname('Blue')
  @automation.createaccount.input_password('t')
  @automation.createaccount.choose_day('30')
  @automation.createaccount.choose_months('April')
  @automation.createaccount.choose_year('1989')
  @automation.createaccount.check_newsletter
  @automation.createaccount.check_special_offers
  @automation.createaccount.input_address_firstname('Rain')
  @automation.createaccount.input_address_lastname('Blue')
  @automation.createaccount.input_company_field('Sparta')
  @automation.createaccount.input_address_line_one('200 Code Street')
  @automation.createaccount.input_address_line_two('Ruby High Rise')
  @automation.createaccount.input_city('Kailua')
  @automation.createaccount.choose_state('Hawaii')
  @automation.createaccount.input_postcode('96704')
  @automation.createaccount.choose_country('United States')
  @automation.createaccount.input_additional('I regret choosing the create account page')
  @automation.createaccount.input_home_phone('02074713472')
  @automation.createaccount.input_mobile_phone('07947318493')
  @automation.createaccount.input_address_alias('home address')
end

Then("The correct error message will appear on the page") do
  @automation.createaccount.click_register_button
  expect(@automation.createaccount.short_password_error).to eq 'passwd'
end
