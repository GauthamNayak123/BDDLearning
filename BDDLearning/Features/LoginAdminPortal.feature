﻿Feature: LoginAdminPortal

Login to Admin portal should happen using valid credentials only


@Smoke
Scenario Outline: Login Using Valid Credentials
Given User is on admin portal login page
When  User Enters valid <username> and <password>
And   User Clicks on Login button
Then  User should be logged in sussefully
Examples:
  | username             | password      |
  | admin@phptravels.com | validPassword |

@Admin
Scenario Outline: Login Using Invalid Credentials
Given User is on admin portal login page
When  User Enters ivalid <username> and <password>
And   User Clicks on Login button
Then  User should get <error>

Examples:
  | username    | password        | error                                |
  | validuser   | invalidPassword | Please Enter valid password          |
  | invaliduser | invalidpassword | Please Enter valid username/password |
  