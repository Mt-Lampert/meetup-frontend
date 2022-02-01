Feature: Single Meetup Page

    As a user
    I want to use the Single Meetup Page
    In order to have access to every detail of a single meetup


    Background: Being a guest user

      Scenario: Browsing a single meetup
        When I open a single meetup page
        Then a see a container
        And looking inside the container
        Then I see a title
        And I see a big image showing the meetup location
        And I see the date of the meetup
        And I see the full description 
        And I see an ID card showing the meetup creator


    Background: Being logged-in but not creator of the meetup

      Scenario: Browsing a single meetup
        When I open  single meetup page,
        Then I see the the same as a guest user sees
        And  I also see an active "Register" button.


    Background: Being the logged-in creator of the meetup

      Scenario: Browsing a single meetup
        When I open a single meetup page
        Then I see everything a guest user sees
        And I see an "Edit" button for every single information
        And I see a deactivated "Register" button
        And I see no Id card showing myself.

      Scenario: Editing a text information and Cancel Editing
        When I click on the "Edit" button of "Title" or "Description"
        Then a text field / text area opens with the current title or description
        And a "Cancel" button appears
        And a "Save" button appears, And 
        When I click on the "Cancel" button
        Then the original title / description is re-installed
        And "Cancel" and "Save" buttons disappear.

      Scenario: Editing a text information successfully
        When I click on the "Edit" button of "Title" or "Description"
        When I click the "Save" button
        Then the new title / description is being passed to the backend
        And when the backend signals successful update,
        Then the information is updated on the page
        And "Cancel" and "Save" buttons disappear.

      Scenario: Editing the date successfully
        When I click on the "Edit" button of "Date"
        Then a date selection widget opens
        And a "Cancel" button appears
        And a "Save" button appears, And 
        When I click on the "Cancel" button
        Then the original title / description is re-installed
        And "Cancel" and "Save" buttons disappear
        But When I click the "Save" button
        Then the new date is being passed to the backend
        And when the backend signals successful update,
        Then the date is updated on the page
        And "Cancel" and "Save" buttons disappear.

      Scenario: Failing Edit of Date
        When I click on the "Edit" button of "Date"
        Then a date selection widget opens
        And a "Cancel" button appears
        And a "Save" button appears, And 
        When I click the "Save" button
        Then the new date is being passed to the backend
        And If the backend signals Error,
        Then the original title / description is re-installed
        And an Error notification appears below the to-be-changed element
        And "Cancel" and "Save" buttons disappear.

      Scenario: Editing the image
        When I click on the "Edit" button for the image,
        Then an "Upload" dialog opens
        And When I have chosen the new image
        Then the new image is sent to the server
        And the URL of the image is being updated on the backend
        And if both upload and URL update have been successful,
        Then the image URL on the page is being updated

      Scenario: Failing Database Edit (general)
        Given I edited a markup information in a proper way,
        When I click the "Save" button
        And the backend signals Error,
        Then the original information is re-installed
        And an Error notification appears below the to-be-changed element
        And "Cancel" and "Save" buttons disappear.

