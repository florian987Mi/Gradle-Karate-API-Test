Feature: Get all countries in the world

  Background:
    * configure proxy internalProxy
    * url baseUrl

  Scenario: Get all countries
    Given path '/all'
    When method GET
    Then status 200
