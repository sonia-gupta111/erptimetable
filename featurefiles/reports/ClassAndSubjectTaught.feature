Feature: class and subject taught details

  Background:  Steps to open class and subject taught details page
    Given for url
    When user enter username and password
    And click sign in to open erp home page
    Then user click time table manager logo
    When user open class and subject taught form

  @verify_with_filters @Scenario1
  Scenario: To verify class and subject taught details with filters
    When user select index "1" from class and subject taught details form
    Then on clicking show button user should be able to view class and subject taught details


  @verify_without_filters @Scenario2
  Scenario: To verify class and subject taught details without filters
    Then click on show to view class and subject taught details