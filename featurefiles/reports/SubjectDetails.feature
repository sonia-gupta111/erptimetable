Feature: SubjectDetails
  As a user I would like to run the test cases of this page
  So that I don't have to do it manually

  Background: Steps to open subject details page
    Given for url
    When user enter username and password
    And click sign in to open erp home page
    Then user click time table manager logo
    When user open subject details

  @verify_without_filters @scenario1
  Scenario: To verify subject details without filters
    Then click show to open subject details