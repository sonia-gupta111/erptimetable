Feature: Subject teacher details
  As a user I would like to run the test cases of this page
  So that I don't have to do it manually

  Background: Steps to open subject teacher details page
    Given for url
    When user enter username and password
    And click sign in to open erp home page
    Then user click time table manager logo
    When user open subject teacher details page

  @verify_with_filters @Scenario1
  Scenario: To verify the subject Teacher details with filters
    When user select index "1" in teacher subject details
    Then click on show to open subject teacher details form

  @verify_without_filters @Scenario2
  Scenario: To verify the subject Teacher details without filters
    Then click on show button to view teacher wing wise details
