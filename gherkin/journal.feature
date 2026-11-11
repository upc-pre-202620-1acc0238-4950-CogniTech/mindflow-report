# language: en

@US16 @US17 @acceptance @proposed
Feature: Journal search and calendar
  As a MindFlow user
  I want to review my journal from the backend
  So that I can find entries and identify emotional patterns

  Scenario: Search journal entries by keyword
    Given the user is authenticated and has journal entries
    When the user searches for a keyword
    Then the application should request matching entries from the backend
    And the matching entries should be displayed

  Scenario: View entry sentiment in the calendar
    Given the user has journal entries on different dates
    When the user opens the emotional calendar
    Then the application should request the user's journal history
    And each date with an entry should show its stored sentiment
