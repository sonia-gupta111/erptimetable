Feature: Subject summary details
  As a user I would like to run the test cases of this page
  So that I don't have to do it manually

  Background: Steps to open Subject summary page
    Given for url
    When user enter username and password
    And click sign in to open erp home page
    Then user click time table manager logo
    When user open Subject summary page

  @Verify_without_filters @Scenario1
  Scenario: To verify the Subject summary details without filters
    And user click on show button to view Subject summary details