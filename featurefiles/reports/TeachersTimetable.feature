Feature: Teachers Timetable
  As a user I would like to run the test cases of this page
  So that I don't have to do it manually

  Background: Steps to open teachers time table page
    Given for url
    When user enter username and password
    And click sign in to open erp home page
    Then user click time table manager logo
    When user open Teachers Timetable

  @verify_with_filters @scenario1
  Scenario: To verify the teacher's timetable with filters
    When user select Teacher's timetable with index "1" on Teachers Timetable
    And select day with index "1" on Teachers Timetable
    Then click show to open Teachers Timetable

  @verify_without_filters @scenario2
  Scenario: To verify Teachers Timetable without filters
    Then click show to open Teachers time table
