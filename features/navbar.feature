Feature: Nav Bar

    As a user
    I have great use for the Navbar
    Since I want fast and effective usability

    Scenario: Navbar for unregistered user
      Given I am a guest user
      When I look at the nav bar
      Then I see the logo on the left side
      And I see a menu bar on the right side showing "Meetups"
      And I see "Sign Up" on the menu bar
      And I see "Login" on the menu bar

    Scenario: Navbar for registered user
      Given I am a signed-in user
      When I look at the nav bar
      Then I no longer see "Sign Up" and "Logged In" on the menu bar
      But I still see "Meetups" on the menu bar
      And I also see "New" in the menu bar for creating a new meetup
      And I also see "Profile" in the menu bar for my personal dashboard

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

    
      