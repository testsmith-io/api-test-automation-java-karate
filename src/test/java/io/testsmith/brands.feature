Feature: Retrieve Brands

  Scenario: Should retrieve at least two brands
    Given url baseUrl + '/brands'
    When method GET
    Then status 200
    And match response == '#[]'
    And assert response.length >= 2