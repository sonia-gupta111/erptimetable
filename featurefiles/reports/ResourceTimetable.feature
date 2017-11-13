Feature: Resource timetable details
  As a user I would like to run the test cases of this page
  So that I don't have to do it manually

  Background: Steps to open Resource timetable details page
    Given for url
    When user enter username and password
    And click sign in to open erp home page
    Then user click time table manager logo
    When user open Resource timetable details form

  @verify_with_filters @scenario1
  Scenario: To verify Resource timetable details with filters
    And user select resource with index "1" on resource timetable
    Then click show to open resource timetable

  @verify_without_filters @scenario2
  Scenario: To verify Resource timetable details without filters
    Then click show to open Resource timetable details
