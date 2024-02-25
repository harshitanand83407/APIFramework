Feature: Validating Place API's 
@AddPlace @Regression
Scenario Outline: Verify if place is being succesffully added using AddPlaceAPI
 Given Add Place Payload with "<name>" "<language>" "<address>"
 When user calls "AddPlaceAPI" with "POST" http request
 Then the API call is success with status code 200
 And "status" in response body is "OK"
 And "scope" in response body is "APP"
 And verify place_Id created maps to "<name>" using "getPlaceAPI"
 
Examples:
    |name   |language|address|
    |Harshit|English |Noida  |
#    |Anand  |Hindi   |Chandigarh |
 
@DeletePlace @Regression
Scenario: Verify if Dleete Place functionality is working
    Given DeletePlace Payload
    When user calls "deletePlaceAPI" with "POST" http request
    Then the API call is success with status code 200
    And "status" in response body is "OK"
    
    