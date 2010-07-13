Feature: Checking whether we have a picture or not.

@sample_test
Scenario: Making sure we can get the extension form the names.
  Given I have a picture called "abc.png"
  When I search for a picture with name "abc.png"
  Then I should see get "1" picture with name "abc.png"


@in_progress
Scenario: Making sure we can search based on tags.
  Given I have a picture called "mosaic.jpeg" with tag "art"
  And I have a picture called "cricket.png" with tag "sport"
  When I search for all "art" pictures
  Then I will see only one picture
  And it will be "mosaic.jpeg"
