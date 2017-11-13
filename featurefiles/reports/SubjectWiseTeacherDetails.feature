Feature: Subject wise teacher details
  As a user I would like to run the test cases of this page
  So that I don't have to do it manually

  Background: Steps to open Subject wise teacher details page
    Given for url
    When user enter username and password
    And click sign in to open erp home page
    Then user click time table manager logo
    When user open Subject wise teacher details page

  @Verify_without_filters @Scenario1
  Scenario: To verify the Subject wise teacher details without filters
    And user click on show button to view Subject wise teacher details