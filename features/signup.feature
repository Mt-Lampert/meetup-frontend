Feature: Signup

    As a guest user
    I want to sign up to the Page
    In order to be able to add meetups
    And register to existing meetups.

    Scenario: Successful signup
      Given I am a guest user,
      When I open the "Signup" page
      Then I see a "user name" input field
      And I see an "email" input field
      And I see a "password" password field
      And I see a "re-enter password" password field
      And I see a "Signup" button.
      When I have properly filled all fields
      And built-in verification has no objections
      And I click on the "Signup" button,
      Then the data is sent to the backend, and
      When the backend signals successful data insertion,
      Then I am being redirected to my profile page.