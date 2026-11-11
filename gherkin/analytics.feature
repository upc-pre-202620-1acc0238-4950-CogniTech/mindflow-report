# language: en

@US31 @acceptance @proposed
Feature: Analytics dashboard
  As a MindFlow user
  I want to review my wellbeing indicators
  So that I can identify trends in my records

  Scenario: Display analytics from the backend
    Given the user is authenticated and has journal entries and habits
    When the user opens the analytics dashboard
    Then the application should request the selected period indicators from the backend
    And the displayed values should match the user's stored records
