Feature: Particular class timetable details
  As a user I would like to run the test cases of this page
  So that I don't have to do it manually

  Background: Steps to open Particular class timetable details page
    Given for url
    When user enter username and password
    And click sign in to open erp home page
    Then user click time table manager logo
    When user open Particular class timetable details form

  @verify_with_filters @scenario1
  Scenario: To verify Particular class timetable details with filters
    And user select class wise timetable with index "1" on Particular class timetable
    And select day with index "1"
    Then click show to open Particular class timetable

  @verify_without_filters @scenario2
  Scenario: To verify Particular class timetable details without filters
    Then click show to open Particular class timetable details
