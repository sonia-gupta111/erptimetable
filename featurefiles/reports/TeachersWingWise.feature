Feature: Teacher wing wise details

  Background:  Steps to open subject teacher details page
    Given for url
    When user enter username and password
    And click sign in to open erp home page
    Then user click time table manager logo
    When user open teacher wing wise form

    @verify_with_filters @Scenario1
      Scenario: To verify teacher wing wise details with filters
      When user select index "1" from subject teacher details form
      Then on clicking show button user should be able to view teacher wing wise details


      @verify_without_filters @Scenario2
        Scenario: To verify teacher wing wise details without filters
        Then click on show to view teacher wing wise details

