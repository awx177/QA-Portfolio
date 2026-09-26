# Test Report

## 1. Document Information

| Field                | Details                                          |
| -------------------- | ------------------------------------------------ |
| Application          | Practice Software Testing                        |
| Testing Type         | Manual Web Testing                               |
| Tester               | Andrii                                           |
| Test Management      | Qase                                             |
| Defect Tracking      | Jira                                             |
| API Testing          | Postman                                          |
| Database Testing     | PostgreSQL / Beekeeper Studio                    |
| Standard Environment | `https://practicesoftwaretesting.com/`           |
| Buggy Environment    | `https://with-bugs.practicesoftwaretesting.com/` |

## 2. Objective

The objective of this testing activity was to verify the functionality of the Practice Software Testing web application, identify defects, document test results, and demonstrate a complete junior-level manual QA workflow.

The testing process included planned manual testing, exploratory testing, API testing, database testing, and defect reporting.

## 3. Test Scope

### In Scope

* User interface
* Navigation
* Product categories
* Product discovery
* Authentication-related functionality
* Product details
* Shopping cart
* Cart calculations
* Product removal
* API functionality
* Database data and relationships
* Basic non-functional checks
* Exploratory testing and bug hunting

### Out of Scope

* Performance/load testing
* Security penetration testing
* Cross-browser testing on a large browser matrix
* Mobile application testing
* Production monitoring

## 4. Test Environments

### Standard Environment

`https://practicesoftwaretesting.com/`

The standard environment was used for planned manual test case execution.

### Buggy Environment

`https://with-bugs.practicesoftwaretesting.com/`

The buggy environment was used for exploratory testing and defect discovery.

### Database Environment

* PostgreSQL
* Docker
* Beekeeper Studio

### API Testing Environment

* Postman

## 5. Test Documentation

The following QA artifacts were created as part of the portfolio:

* Test Plan
* Functional Checklist
* Non-Functional Checklist
* Qase Test Cases
* Qase Test Run
* Exploratory Testing Sessions
* Jira Bug Reports
* Postman API Collection
* PostgreSQL SQL Queries
* Database test data
* Test Evidence / Screenshots

## 6. Test Case Execution

Planned manual test cases were created and executed in Qase against the standard Practice Software Testing environment.

The executed test cases covered core functionality such as:

* Login
* Form validation
* Product navigation
* Product details
* Shopping cart
* User actions
* Logout

The planned test cases executed against the standard environment were passed, and no defects were identified during that execution.

This result does not mean that the application contains no defects. Additional exploratory testing was therefore performed against the dedicated buggy environment.

## 7. Exploratory Testing

Exploratory testing was performed against:

`https://with-bugs.practicesoftwaretesting.com/`

Two exploratory testing sessions were documented.

### Session 001 — UI, Navigation and Product Discovery

Focus areas:

* Website header
* Website logo
* Main navigation
* Home navigation
* Product categories
* Category navigation
* Product discovery

Defects identified during Session 001:

| ID     | Area              | Defect                                        |
| ------ | ----------------- | --------------------------------------------- |
| BUG-01 | Product Discovery | Chainsaw category redirects to a 404 page     |
| BUG-02 | UI / Header       | Website logo is not displayed                 |
| BUG-05 | Navigation        | Home navigation redirects to the Contact page |

Detailed reproduction steps and evidence for these defects were documented in Jira.

### Session 002 — Shopping Cart

Focus areas:

* Adding products to the cart
* Product price
* Product quantity
* Item subtotal
* Removing products
* Cart state after user actions

Defects identified during Session 002:

| ID     | Area          | Defect                                             |
| ------ | ------------- | -------------------------------------------------- |
| BUG-03 | Shopping Cart | Cart item subtotal is displayed as `$00.00`        |
| BUG-04 | Shopping Cart | Delete button does not remove the selected product |

Detailed reproduction steps and evidence for these defects were documented in Jira.

## 8. Defect Summary

A total of 5 defects were identified during exploratory testing of the buggy environment.

| ID     | Summary                                            | Area              | Severity |
| ------ | -------------------------------------------------- | ----------------- | -------- |
| BUG-01 | Chainsaw category redirects to a 404 page          | Product Discovery | Medium   |
| BUG-02 | Website logo is not displayed                      | UI / Header       | Low      |
| BUG-03 | Cart item subtotal is displayed as `$00.00`        | Shopping Cart     | High     |
| BUG-04 | Delete button does not remove the selected product | Shopping Cart     | High     |
| BUG-05 | Home navigation redirects to the Contact page      | Navigation        | Medium   |

All five defects were documented and reported in Jira with reproduction steps, expected and actual results, environment information, and supporting evidence.

## 9. Planned Testing vs Exploratory Testing

### Planned Testing

Planned testing was performed using predefined test cases in Qase.

The purpose was to verify expected behavior systematically and provide repeatable test execution.

### Exploratory Testing

Exploratory testing was performed without relying exclusively on predefined test cases.

The tester explored the application from a user's perspective, followed navigation paths, checked UI behavior, verified state changes, and investigated unexpected results.

Two exploratory sessions resulted in the discovery of five defects in the dedicated buggy environment.

## 10. API Testing

API testing was performed using Postman.

The API testing activity included:

* Sending HTTP requests
* Verifying response status codes
* Checking response bodies
* Checking request parameters and payloads
* Using authentication where required
* Verifying returned data
* Testing related API endpoints

The Postman collection was exported as JSON and included in the portfolio as supporting evidence.

## 11. Database Testing

Database testing was performed against PostgreSQL using Beekeeper Studio.

The database testing activity included:

* Inspecting database structure
* Creating and working with test data
* Executing SELECT queries
* Filtering records
* Joining related tables
* Verifying relationships between records
* Checking returned data against expected relationships

SQL queries were stored separately in the portfolio under the `sql/` directory.

## 12. Test Results Summary

| Testing Activity          | Result                  |
| ------------------------- | ----------------------- |
| Planned Manual Test Cases | Passed                  |
| Exploratory Testing       | 5 defects identified    |
| API Testing               | Completed               |
| Database Testing          | Completed               |
| Defect Reporting          | 5 Jira defects reported |

## 13. Test Evidence

The portfolio contains screenshots and other evidence for the main testing activities, including:

* Qase test cases
* Qase test case details
* Qase test run
* Jira defect list
* Jira defect details
* Exploratory testing sessions
* Postman requests and responses
* Beekeeper Studio database structure and query results

## 14. Traceability

The portfolio demonstrates the relationship between different QA activities:

```text
Test Plan
    ↓
Checklists
    ↓
Test Cases
    ↓
Test Execution in Qase
    ↓
Exploratory Testing
    ↓
Defect Reports in Jira

API Testing → Postman
Database Testing → PostgreSQL / Beekeeper Studio
```

Planned test cases and exploratory testing serve different purposes. A defect discovered during exploratory testing does not have to originate from a predefined test case.

## 15. Conclusion

The Practice Software Testing application was tested using a combination of planned manual testing, exploratory testing, API testing, and database testing.

The planned manual test cases executed against the standard environment passed successfully.

Exploratory testing against the buggy environment identified five defects affecting product discovery, the user interface, navigation, and shopping cart functionality.

The testing activities were documented using industry-relevant tools:

* Qase for test case management and test execution
* Jira for defect tracking
* Postman for API testing
* PostgreSQL and Beekeeper Studio for database testing
* Markdown files for QA documentation

The completed portfolio demonstrates a practical end-to-end manual QA workflow, from test planning and test design through test execution, exploratory testing, defect reporting, API testing, and database verification.
