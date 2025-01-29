Feature: Protected Invoice API

  Scenario: Should retrieve invoices with valid token
    * def loginResponse = call read('common/login.feature')
    * def token = loginResponse.token

    Given url baseUrl + '/invoices'
    And header Authorization = 'Bearer ' + token
    When method GET
    Then status 200
    And match response.data == '#[]'
    And assert response.data.length >= 15
