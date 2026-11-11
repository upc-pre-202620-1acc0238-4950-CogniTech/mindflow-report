# language: en

@US21 @US22 @acceptance @proposed
Feature: Habit management
  As a MindFlow user
  I want to manage my habits
  So that I can track my daily progress

  Scenario: Create a new habit
    Given the user is authenticated
    When the user creates a valid habit
    Then the backend should save the habit
    And the habit should appear in the habit list

  Scenario: Record habit completion
    Given the user has an active habit
    When the user marks the habit as completed for the current date
    Then the backend should store the completion record
    And the application should show the updated progress or streak
