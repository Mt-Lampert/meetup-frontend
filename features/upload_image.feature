Feature: Upload Image

    As a logged-in user
    I want to upload an image to a new meetup page
    In order to add symbolism and colors to the announcement.

  Background: Being logged in

    Scenario: Upload image successfully
        Given I have opened the "New Meetup" page,
        When I click on the image placeholder,
        Then an upload dialog box opens, and
        When I have chosen my image and click "Save",
        Then the image placeholder will be replaced by a thumbnail of my image.


    Scenario: Image Upload Fail
        Given I have opened the "New Meetup" page,
        When I click on the image placeholder,
        Then an upload dialog box opens, and
        When I have chosen my image and click "Save",
        And the image upload fails,
        Then the neutral image placeholder will be replaced by a red image placeholder
        And I can see an error message telling me what went wrong.
