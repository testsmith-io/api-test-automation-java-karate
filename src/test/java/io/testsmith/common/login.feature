Feature: Login API

  Scenario: Retrieve access token
    Given url baseUrl + '/users/login'
    And request { email: 'customer@practicesoftwaretesting.com', password: 'welcome01' }
    When method POST
    Then status 200
    And def token = response.access_token
    And print 'Access Token:', token