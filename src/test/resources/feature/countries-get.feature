Feature: Get all countries in the world

  Background:
   # * configure proxy internalProxy
    #* url baseUrl

  Scenario: Get all countries
    Given url 'https://restcountries.eu/rest/v2/all'
    When method GET
    Then status 200
