Feature: Parallel allocation details

  Background: Steps to open class teacher form
    Given for url
    When user enter username and password
    And click sign in to open erp home page
    Then user click time table manager logo
    When user open parallel allocation details

  @Verify_without_filters @Scenario1
  Scenario: To verify the parallel allocation details without filter
    Then click show to open parallel allocation details
