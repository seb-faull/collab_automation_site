# Given("I am signed in and on the add new address page") do
#   @auto_site = AutomationPracticeSite.new
#   @auto_site.homepage.visit_home_page
#   @auto_site.homepage.click_sign_in_link
#   @auto_site.login.input_user_email('test@spartaglobal.co')
#   @auto_site.login.input_user_password('password')
#   @auto_site.login.click_sign_in_submit_button
#   @auto_site.addnewaddresspage.visit_add_new_address_page
# end
#
# When("I fill out the form correctly") do
#   @auto_site.addnewaddresspage.input_address_field("12 Ellesmere Road")
#   @auto_site.addnewaddresspage.input_address_line_2_field("Willesden Green")
#   @auto_site.addnewaddresspage.input_city_field("London")
#   @auto_site.addnewaddresspage.select_state("Nevada")
# end
#
# And("I click the save button") do
#
# end
#
# Then("the address is saved and I am redirected to the my addresses page") do
#
# end
