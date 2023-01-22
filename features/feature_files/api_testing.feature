Feature: verify same api end point from reqres.in

  @api_end_point_verification
  Scenario Outline: verify same api end point from reqres.in api application
    Given I am on the Reqres home page
    Then Create new user with username as "<Username>" and job as "<Job>"
    Then Verifying the response code after creating new user
    Then Verifying the username after creating new user
    Then Verifying the job after creating new user

    Examples:
      | Username    | Job        |
      | Test User 1 | Test Job 1 |