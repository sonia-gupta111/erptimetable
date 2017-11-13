Feature: class and resource information details
  As a user I would like to run the test cases of this page
  So that I don't have to do it manually

  Background: Steps to get information of class and resource
    Given for url
    When user enter username and password
    And click sign in to open erp home page
    Then user click time table manager logo
    When user open class and resource information form

  @verify_with_filters @Scenario1
  Scenario: To verify  class and resource information with filters
    And user select index "1" from select class field
    Then click on show button to view class and resource information
