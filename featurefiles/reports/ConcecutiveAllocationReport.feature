Feature: Consecutive allocation details
  As a user I would like to run the test cases of this page
  So that I don't have to do it manually

  Background: Steps to open consecutive allocation report
    Given for url
    When user enter username and password
    And click sign in to open erp home page
    Then user click time table manager logo
    When user open consecutive allocation report page

  @verify_without_filters @Scenario1
  Scenario: To verify consecutive allocation details without filters
    Then click on show button to view teacher wing wise details
