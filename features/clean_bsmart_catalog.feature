Feature: My bootstrapped app kinda works

  In order to work with bsmart's catalog easier in other applications
  As a geek
  I want to transform bsmart's catalog into a sensible xml file

  Scenario: App just runs
    When I get help for "clean-bsmart-catalog"
    Then the exit status should be 0
    And the banner should be present
    And the banner should document that this app takes options
    And the following options should be documented:
      |--version|
      |--catalog|
    And the banner should document that this app takes no arguments

  Scenario: Supply app with a bsmart catalog xml
    Given a catalog from bsmart's Stock and Sales by Suppl.Ref. - SRI called "input.xml"
    When I run `clean-bsmart-catalog -c input.xml`
    Then the output should match the expected XML
