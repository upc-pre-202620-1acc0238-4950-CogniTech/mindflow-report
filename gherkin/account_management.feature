# language: en

@US04 @US05 @US07 @acceptance @proposed
Feature: Account management
  As an authenticated MindFlow user
  I want to protect and manage my account
  So that I can control my personal information

  Scenario: Unlock the application with a valid PIN
    Given the user has enabled a PIN lock
    When the user enters the correct PIN
    Then the backend should confirm the PIN validation
    And the application should allow access to the user's data

  Scenario: Update profile information
    Given the user is authenticated
    When the user saves a valid name and occupation
    Then the backend should store the updated profile information
    And the updated values should be displayed when the profile is opened again

  Scenario: Delete an account after confirmation
    Given the user is authenticated
    When the user requests account deletion and confirms the action
    Then the backend should delete the account
    And the application should end the active session
