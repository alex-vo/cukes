Feature: Server is healthy

  Background:
    Given baseUri is http://localhost:8888/

  Scenario: Should return pong response on /healthcheck
    When the client performs GET request on /healthcheck
    Then status code is 200

  Scenario: Scenario is isolated from another
    When the client performs GET request on /healthcheck
    Then status code is 200
    Given request body "Hello. I'm Isolated!"
    Given queryParam "param" is "isolated"

  Scenario: GET is performed without extra request body
    When the client performs GET request on /healthcheck
    Then status code is 200

  Scenario: Float values should be compared correctly
    Given baseUri is http://localhost:8080/
    When the client performs GET request on /staticTypes
    Then status code is 200
    Then response contains property "prop[0].float" with value "26.505515"