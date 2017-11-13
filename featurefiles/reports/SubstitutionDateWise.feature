Feature: Substitution date wise details
  As a user I would like to run the test cases of this page
  So that I don't have to do it manually

  Background: Steps to open Substitution date wise details page
    Given for url
    When user enter username and password
    And click sign in to open erp home page
    Then user click time table manager logo
    When user open Substitution date wise details page

  @verify_with_filters @scenario1
  Scenario: To verify Substitution date wise details with filters
    And user selects from date as month "April" day "1" and year "2017" on substitution date wise details
    And user selects to date as month "December" day "30" and year "2017" on substitution date wise details
    Then user click on show to view report
