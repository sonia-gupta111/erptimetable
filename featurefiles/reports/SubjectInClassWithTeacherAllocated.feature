Feature: Subject in class with teacher allocation details
  As a user I would like to run the test cases of this page
  So that I don't have to do it manually

  Background: Steps to open Subject in class with teacher allocated details page
    Given for url
    When user enter username and password
    And click sign in to open erp home page
    Then user click time table manager logo
    When user open Subject in class with teacher allocated details page

  @verify_with_filters @scenario1
  Scenario: To verify Subject in class with teacher allocated details with filters
    And user select class with index "1" from class wise allocation dropdown
    Then click show to open Subject in class with teacher allocated details

  @verify_without_filters @scenario2
  Scenario: To verify Subject in class with teacher allocated details without filters
    Then click show to open Subject in class with teacher allocated details
