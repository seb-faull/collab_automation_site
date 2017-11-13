Given("I am on the homepage") do
  @auto_site = AutomationPracticeSite.new
  @auto_site.homepage.visit_home_page
end

When("should have a clickable 'contact us' link") do
  @auto_site.homepage.visit_home_page
  @auto_site.homepage.click_contact_us_link
end

When("I click the sign in link") do
  @auto_site.homepage.visit_home_page
  @auto_site.homepage.click_sign_in_link
end

When("I click the contact us link") do
  @auto_site.homepage.click_contact_us_link
  sleep 4
end

Then("I go to the contact us page") do
end
