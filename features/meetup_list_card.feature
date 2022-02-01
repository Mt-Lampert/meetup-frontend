Feature: Meetup List Card

    As a user
    I like the Meetup List Card
    Because it gives me a nice overview about a meetup.

    Scenario: Studying a List Card
      Given I have opended the Meetup List Page,
      When I look at a single Meetup Cart
      Then I see an Image
      And I see a title
      And I see a Meetup Date
      And I see one paragraph of the description
      And I see a "More" button.

    Scenario: Clicking the "More" button
      When I click the "More" button
      Then RML-Meetup will take me to the correspronding Single Meetup Page


