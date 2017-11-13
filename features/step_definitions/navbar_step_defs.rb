Given("I am a user who wants to access the women page from the navbar") do
  @navtest = NavBar.new
end

When("I access the women page") do
  @navtest.visit_women
end

Then("I should be able to see the women heading") do
  expect(@navtest.category).to eq "Women"
end

Given("I am a user who wants to access the dresses page from the navbar") do
  @navtest = NavBar.new
end

When("I access the dresses page") do
  @navtest.visit_dresses
end

Then("I should be able to see the dresses heading") do
  expect(@navtest.category).to eq "Dresses"
end

Given("I am a user who wants to access the tshirts page from the navbar") do
  @navtest = NavBar.new
end

When("I access the tshirts page") do
  @navtest.visit_tshirts
end

Then("I should be able to see the tshirts heading") do
  expect(@navtest.category).to eq "T-shirts"
end

Given("I am a user who wants to access the tops page from the navbar") do
  @navtest = NavBar.new
end

When("I access the tops page") do
  @navtest.visit_tops
end

Then("I should be able to see the tops heading") do
  expect(@navtest.category).to eq "Tops"
end

Given("I am a user who wants to access the blouses page from the navbar") do
  @navtest = NavBar.new
end

When("I access the blouses page") do
  @navtest.visit_blouses
end

Then("I should be able to see the blouses heading") do
  expect(@navtest.category).to eq "Blouses"
end

Given("I am a user who wants to access the casual dresses page from the navbar") do
  @navtest = NavBar.new
end

When("I access the casual dresses page") do
  @navtest.visit_casual_dresses
end

Then("I should be able to see the casual dresses heading") do
  expect(@navtest.category).to eq "Casual Dresses"
end

Given("I am a user who wants to access the evening dresses page from the navbar") do
  @navtest = NavBar.new
end

When("I access the evening dresses page") do
  @navtest.visit_evening_dresses
end

Then("I should be able to see the evening dresses heading") do
  expect(@navtest.category).to eq "Evening Dresses"
end

Given("I am a user who wants to access summer dresses page from the navbar") do
  @navtest = NavBar.new
end

When("I access the summer dresses page") do
  @navtest.visit_summer_dresses
end

Then("I should be able to see the summer dresses heading") do
  expect(@navtest.category).to eq "Summer Dresses"
end
