Given("I am on the contact page") do
  @auto_site = Contact.new
  @auto_site.visit_contact_page
end

When("I choose a subject header") do
  @auto_site.choose_subject
end

When("Enter a valid email address") do
  @auto_site.email_write
end

When("Enter a valid order reference") do
  @auto_site.order_reference_write
end

When("Type a message") do
  @auto_site.message_write
end

When("send message") do
  @auto_site.send_message
end

Then("I will see a success message") do
  @auto_site.confirmation
end


Given("i am on the contct page") do
  @auto_site = Contact.new
  @auto_site.visit_contact_page
end

Given("Enter an invalid email address") do
  @auto_site.write_invalid_email
end

Given("Enter an invalid order reference") do
  @auto_site.order_reference_write
end

Given("Type an invalid message") do
  @auto_site.invalid_message_write
end

Given("send an invalid message") do
  @auto_site.send_message
end


Then("I will see an error message") do
  @auto_site.error_message
end
