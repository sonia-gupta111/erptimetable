Feature: Class Time Table Report
  As a user I would like to run the test cases of this page
  So that I don't have to do it manually

  Background: Steps to open time table manager home page
    Given for url
    When user enter username and password
    And click sign in to open erp home page
    Then user click time table manager logo
    And open class time table

  @verify_with_filters @scenario1
  Scenario: