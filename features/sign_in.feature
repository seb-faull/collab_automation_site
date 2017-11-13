Feature: sign in
As a current user
i want to be able to sign in

@signin
Scenario: If I enter the correct details I will be able to sign in
  Given I am on the sign in page
  When I input a valid email and password and click sign in
  Then I will be signed in and redirected to the my account page

@authentication_error
Scenario: If I enter the incorrect password I will not be able to sign in
  Given I am on the sign in page
  When I input a valid email
  And I input an invalid password
  Then I will not be able to sign in and an authentication error message will show

@invalid_email_address
Scenario: If I enter an invalid email address I will not be able to sign in
  Given I am on the sign in page
  When I input an invalid email address
  And I input an invalid password
  Then I will not be able to sign in and an invaild email error message will show

@invalid_password
Scenario: If I enter a valid email address but an invalid password I will not be able to sign in
  Given I am on the sign in page
  When I input a valid email address and I input an invalid password
  Then I will not be able to sign in and an invalid password error message will show
