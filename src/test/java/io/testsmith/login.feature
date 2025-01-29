Feature: User Login

  Scenario: Should return access token on successful login
    Given url baseUrl + '/users/login'
    And request { email: 'customer@practicesoftwaretesting.com', password: 'welcome01' }
    When method POST
    Then status 200
    And match response contains { access_token: '#notnull' }