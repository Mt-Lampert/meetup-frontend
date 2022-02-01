Feature: Nav Bar

    As a user
    I have great use for the Navbar
    Since I want fast and effective usability

    Scenario: Navbar for unregistered user
      Given I am a guest user
      When I look at the nav bar
      Then I see the logo on the left side
      And I see a menu bar on the right side showing "Meetups".

    Scenario: Navbar for registered user
      Given I am a signed-in user
      When I look at the nav bar
      Then I see everything a guest user sees
      And I also see "New" in the menu bar
      And I also see "Profile" in the menu bar.

    Scenario: Clicking "Meetups"
      When I click on the "Meetups" menu item
      Then RML-Meetups takes me to the Meetups List Page.

    Scenario: Clicking "New"
      Given I am a signed-in user
      When I click on the "New" menu item
      Then RML-Meetups takes me to the "New Meetup" page.

    Scenario: Clicking "Profile"
      Given I am a signed-in user
      When I click on the "Profile" menu item
      Then RML-Meetups takes me to the "My Meetups" page.

    
      