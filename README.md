# Cucumber: Automation Practice Site

A collaborative task, automating the functions of a practice shopping website, using Cucumber.

## Overview

Initially the test specifications entailed using RSpec to investigate the practice shopping site, using Selenium to check the graphical interfaces of the site was in line with the specifications and functioned appropriately.  
We have also created a testing library using object models, which allowed us to create methods that could be reused across the program, thus making test scripts easier to write and understand.
As the project developed, Cucumber was used to mimic user journeys, end to end testing certain key features of the site.    

## Technologies

### Installation
Run the following commands in your terminal to get the required gem dependencies:  
```gem install httparty```  
```gem install json```  
```gem install rspec```  
```gem install capybara```
```gem install cucumber```

### Versions  
Ruby - 2.4.1  
Rspec - 3.6  
HTTParty - 0.15.6  
Cucumber - 3.0.1  
Capybara - 2.15.4  
Selenium - 0.2.11  


## Example  
Below is an example of how the Cucumber was implemented as a wrapper for the original RSpec tests to model user behaviour. Here, the test is verifying that a user with an already existing account can log in, and be redirected to their account page.

```
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
