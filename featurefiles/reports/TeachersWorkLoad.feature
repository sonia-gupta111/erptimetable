Feature: Teachers work load

  Background: Steps to open work load of teacher form
    Given for url
    When user enter username and password
    And click sign in to open erp home page
    Then user click time table manager logo
    When user open teachers work load details

  @Verify_without_filters @Scenario1
  Scenario: To verify the teachers work load details without filter
    Then click show to open teachers work load details