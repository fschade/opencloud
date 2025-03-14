@skipOnReva
Feature: attempt to PUT files with invalid password
  As an admin
  I want the system to be secure when passwords are stored with the full hash difficulty
  So that unauthorised users do not have access to data

  Background:
    Given user "Alice" has been created with default attributes
    And user "Alice" has created folder "/PARENT"


  Scenario: send PUT requests to webDav endpoints as normal user with wrong password
    When user "Alice" requests these endpoints with "PUT" including body "doesnotmatter" using password "invalid" about user "Alice"
      | endpoint                                |
      | /webdav/textfile0.txt                   |
      | /dav/files/%username%/textfile0.txt     |
      | /webdav/PARENT                          |
      | /dav/files/%username%/PARENT            |
      | /dav/files/%username%/PARENT/parent.txt |
    Then the HTTP status code of responses on all endpoints should be "401"


  Scenario: send PUT requests to webDav endpoints as normal user with no password
    When user "Alice" requests these endpoints with "PUT" including body "doesnotmatter" using password "" about user "Alice"
      | endpoint                                |
      | /webdav/textfile0.txt                   |
      | /dav/files/%username%/textfile0.txt     |
      | /webdav/PARENT                          |
      | /dav/files/%username%/PARENT            |
      | /dav/files/%username%/PARENT/parent.txt |
    Then the HTTP status code of responses on all endpoints should be "401"
