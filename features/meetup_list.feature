Feature: Meetup List

    As a user
    I want to browse all the Meetups
    In order to register and unregister from them.

    Scenario: Meetup Browsing
        When I open the Meetup List page
        Then I see an 'endless' series of List Cards,
        When I see a List card of a Meetup I registered for
        Then that card is being marked with a "booked" label.

    Scenario: Clicking the "More" button
        When I click on the "More" button on one of the Meetup Cards
        Then RML Meetup will take me to the corresponding Single Meetup Page.





