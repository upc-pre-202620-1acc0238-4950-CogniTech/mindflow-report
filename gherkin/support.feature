# language: en

@US37 @acceptance @proposed
Feature: Support ticket management
  As a MindFlow user
  I want to contact support from the application
  So that I can follow up on my requests

  Scenario: Create and view a support ticket
    Given the user is authenticated
    When the user sends a support request with a valid description
    Then the backend should create a ticket for the user
    And the ticket should appear in the user's ticket list

  Scenario: View a support ticket conversation
    Given the user has an existing support ticket
    When the user opens the ticket details
    Then the application should display the available messages and replies
