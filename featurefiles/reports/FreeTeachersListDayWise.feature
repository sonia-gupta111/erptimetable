Feature: Free Teachers list day wise details
  As a user I would like to run the test cases of this page
  So that I don't have to do it manually

  Background: Steps to get details of free teachers per day
    Given for url
    When user enter username and password
    And click sign in to open erp home page
    Then user click time table manager logo
    When user open free teachers list day wise form

  @verify_without_filters @Scenario1
  Scenario: To verify  free teachers list day wise details without filters
    Then click on show button to view free teachers list day wise details
