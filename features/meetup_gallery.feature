Feature: Meetup Gallery

    As a user
    I want Meetups to be in in a casual fashion
    In order to browse them like playing a game
    For better user experience.

  Scenario: Browsing the Gallery
    Given I have opened the Landing Page
    When I look at the gallery
    Then I see three meetup cards showing an image, a title and a date.
    When I click on the "Next" button
    And there are three more meetups in the list
    Then the Gallery moves three elements to the right.
    When I click on the "Previuos" button
    And there are at least three previous meetups in the list
    Then the Gallery moves three elements to the left.

  Scenario: Clicking one Meetup
    When I click on one of the meetup cards
    Then RML-Meetups takes me to the corresponding Meetup Single Page.
    

