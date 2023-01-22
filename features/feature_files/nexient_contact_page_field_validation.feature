Feature: verify all the fields under Contact menu of the Nexient

  @contact_field_validation
  Scenario Outline: verify all the fields are editable under Contact menu of the Nexient
    Given I am on the Nexient home page
    Then I am clicking on the "Contact" menu
    Then Selecting area of interest as "Prospective Client"
    Then Entering the first name as "<Firstname>"
    Then Entering the last name as "<Lastname>"
    Then Entering the company email as "test@test.com"
    Then Entering the company name as "Test Company"
    Then Entering the phone number as "<Phonenumber>"
    Then Verifying I have read checkbox is not selected

    Examples:
      | Firstname        | Lastname        | Phonenumber |
      | Test Firstname 1 | Test Lastname 1 | +8802349434 |
      | Test FirstName 2 | Test Lastname 2 | +8802432443 |
