Feature: Profile Page

    As a registered user
    I want my personal profile page
    In order to check the meetups I created
    And to check the meetups I am registered for.

    Scenario: Browsing the profile
      When I open my personal profile page,
      Then I see my user name
      And I see a gallery of the meetups I host
      And I see a gallery of the meetups I have registered for
      # And I see a list of my friends
      