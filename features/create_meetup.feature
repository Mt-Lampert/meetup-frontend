Feature: Create Meetup

    As a logged-in user
    I want to create a meetup
    In order to organize a meeting of my friends on this social platform.


    Scenario: Browsing the "New Meetup" page
      When I open the "New Meetup" page,
      Then I see a "Title" input field
      # Add feature for this!
      And I see an "Upload Image" widget
      And I see a "Description" text field
      And I see a "Submit" button.

    Scenario: Saving the New Meetup successfully
      Given I have filled out the "New Meetup" form successfully
      And I have successfully uploaded an image for this meetup,
      When I click on the "Submit" button,
      Then RML-Meetup will send the form values to the the Backend.
      When the Backend signals successful creation of a new database entry,
      Then I will be redirected to the Single Meetup page
      And there I will see the result of my meetup creation.
