Given("I am on the signin page") do
  @automation = AutomationPracticeSite.new
  @automation.homepage.visit_home_page
  @automation.homepage.click_sign_in_link
end

When("I click the forgot password button") do
  @automation.login.forgot_passwork_click
end

And("I enter my email address") do
  @automation.forgotpassword.input_username('test@spartaglobal.co')
  @automation.forgotpassword.retrieve_password_button_click
end

Then("I will be shown confirmation that a new password has been emailed to me") do
  expect(@automation.forgotpassword.get_confirmation_message_text).to eq @automation.forgotpassword.forgot_confirmation_text
end

Given("I am on the sign-in page") do
  @automation = AutomationPracticeSite.new
  @automation.homepage.visit_home_page
  @automation.homepage.click_sign_in_link
end

When("I click forgot passowrd") do
  @automation.login.forgot_passwork_click
end

And("Enter the wrong email address") do
  @automation.forgotpassword.input_username('green@tress.co')
  @automation.forgotpassword.retrieve_password_button_click
end

Then("I will be shown the appropriate error") do
  expect(@automation.forgotpassword.wrong_email_error).to eq 'There is no account registered for this email address.'
end
