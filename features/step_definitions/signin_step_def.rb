Given("I am on the sign in page") do
  @automation = AutomationPracticeSite.new
  @automation.homepage.visit_home_page
  @automation.homepage.click_sign_in_link
end

When("I input a valid email and password and click sign in") do
  @automation.login.input_user_email('test@spartaglobal.co')
  @automation.login.input_user_password('password')
  @automation.login.click_sign_in_submit_button
end

Then("I will be signed in and redirected to the my account page") do
    @automation.myaccountpage.click_wishlist_button
end

#Seb's incorrect password test:
When("I input a valid email") do
  @automation.login.input_user_email('test@spartaglobal.co')
end

And("I input an invalid password") do
  @automation.login.input_user_password('asdadsg123')
  @automation.login.click_sign_in_submit_button
end

Then("I will not be able to sign in and an authentication error message will show") do
  expect(@automation.login.get_error_message).to eq 'Authentication failed.'
  sleep 2
end

#Seb's invalid email address test:
And("I input an invalid email address") do
  @automation.login.input_user_email('asd.com')
  @automation.login.click_sign_in_submit_button
end

Then("I will not be able to sign in and an invaild email error message will show") do
  expect(@automation.login.get_error_message).to eq 'Invalid email address.'
end

#Seb's invalid password test:
And("I input a valid email address and I input an invalid password") do
  @automation.login.input_user_email('you_9012@hotmail.co.uk')
  @automation.login.input_user_password('123')
  @automation.login.click_sign_in_submit_button
end

Then("I will not be able to sign in and an invalid password error message will show") do
  expect(@automation.login.get_error_message).to eq 'Invalid password.'
end
