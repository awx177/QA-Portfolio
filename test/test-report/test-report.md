# Test Report

## 1. Document Information

| Field            | Value                                 |
| ---------------- | ------------------------------------- |
| Project          | Practice Software Testing             |
| Application      | Practice Software Testing             |
| Test Type        | Manual Testing                        |
| Testing Approach | Planned Testing + Exploratory Testing |
| Test Management  | Qase                                  |
| Defect Tracking  | Jira                                  |
| API Testing      | Postman                               |
| Database Testing | PostgreSQL / Beekeeper Studio         |
| Tester           | Andrii                                |
| Test Report      | Final                                 |

---

# 2. Objective

The objective of this testing project was to evaluate the main functionality of the Practice Software Testing web application, identify defects, document test results, and demonstrate a complete manual QA testing workflow.

The project included:

* Test Planning
* Functional Testing
* Non-Functional Testing
* Test Case Design
* Test Execution
* Exploratory Testing
* Bug Reporting
* API Testing
* Database Testing
* Test Documentation

---

# 3. Test Scope

## 3.1 In Scope

The following areas were included in the testing scope:

* Authentication
* Login
* Registration
* Product browsing
* Product search
* Product filtering and sorting
* Shopping Cart
* Checkout
* Basic API functionality
* Basic database validation

## 3.2 Out of Scope

The following areas were not included in the main web application testing scope:

* Performance and load testing
* Security penetration testing
* Cross-browser compatibility testing across a large number of browsers
* Mobile application testing
* Production monitoring
* Payment processing with a real payment provider

---

# 4. Test Environments

Two application environments were used during the project.

### Standard Environment

`https://practicesoftwaretesting.com/`

The standard environment was used for planned functional testing and test case execution.

### With-Bugs Environment

`https://with-bugs.practicesoftwaretesting.com/`

The With-Bugs environment was used for exploratory testing and bug hunting.

---

# 5. Test Documentation

The following QA artifacts were created during the project:

* Test Plan
* Functional Checklist
* Non-Functional Checklist
* Test Cases
* Qase Test Run
* Exploratory Testing Sessions
* Jira Bug Reports
* API test collection
* SQL queries
* Test Report

---

# 6. Test Case Execution

A set of 25 manual test cases was prepared and executed in Qase.

The test cases covered:

* Authentication
* Registration
* Products
* Search
* Filtering
* Sorting
* Shopping Cart
* Checkout

## Test Execution Summary

| Status  | Count |
| ------- | ----: |
| Passed  |    25 |
| Failed  |     0 |
| Blocked |     0 |
| Total   |    25 |

### Result

All 25 planned test cases were successfully executed and passed in the standard application environment.

No defects were identified during this particular planned test execution.

---

# 7. Exploratory Testing

Exploratory testing was performed separately on the With-Bugs environment.

The purpose of exploratory testing was to investigate application behavior outside the predefined test cases and identify unexpected behavior.

Two exploratory testing sessions were performed.

## Session 001 — Shopping Cart

The first session focused on:

* Add to Cart
* Shopping Cart
* Product quantity
* Cart subtotal
* Removing products

### Defects Identified

| ID     | Area          | Defect                                                     | Severity |
| ------ | ------------- | ---------------------------------------------------------- | -------- |
| BUG-01 | Shopping Cart | Add to Cart does not properly persist the selected product | High     |
| BUG-02 | Shopping Cart | Cart item quantity does not update correctly               | High     |
| BUG-03 | Shopping Cart | Cart item subtotal is displayed as `$00.00`                | High     |
| BUG-04 | Shopping Cart | Delete button does not remove the selected product         | High     |

---

# 8. Exploratory Testing Session 002

The second session focused on the checkout and payment flow.

Areas explored:

* Cart to Checkout navigation
* Checkout information
* Order information
* Payment step
* Payment validation
* Checkout completion

### Defects Identified

| ID     | Area               | Defect                                              | Severity |
| ------ | ------------------ | --------------------------------------------------- | -------- |
| BUG-05 | Checkout / Payment | Payment step displays `304 missing payment gateway` | Critical |

---

# 9. Defect Summary

A total of **5 defects** were identified during exploratory testing of the With-Bugs environment.

| ID     | Area               | Severity | Source              | Status   |
| ------ | ------------------ | -------- | ------------------- | -------- |
| BUG-01 | Shopping Cart      | High     | Exploratory Testing | Reported |
| BUG-02 | Shopping Cart      | High     | Exploratory Testing | Reported |
| BUG-03 | Shopping Cart      | High     | Exploratory Testing | Reported |
| BUG-04 | Shopping Cart      | High     | Exploratory Testing | Reported |
| BUG-05 | Checkout / Payment | Critical | Exploratory Testing | Reported |

All identified defects were documented in Jira with reproduction steps, expected and actual results, severity, priority, and supporting evidence.

---

# 10. Planned Testing vs Exploratory Testing

The project demonstrated two different testing approaches.

### Planned Testing

The standard environment was tested using predefined test cases.

Result:

**25 Passed / 25 Total**

No defects were identified during the execution of these predefined scenarios.

### Exploratory Testing

The With-Bugs environment was investigated without relying exclusively on predefined test cases.

Result:

**5 defects identified and reported.**

This demonstrates that passing predefined test cases does not necessarily mean that the application is completely free of defects.

---

# 11. API Testing

API testing was performed using Postman against the API environment:

`https://api-with-bugs.practicesoftwaretesting.com`

The API testing scope included:

* Authentication
* Products
* Categories
* Brands
* Users
* Authorization
* Input validation
* Negative scenarios
* API error handling
* Bug hunting

Approximately 20–25 API requests were prepared for the API testing scope.

The API results and requests are documented separately in the Postman collection.

---

# 12. Database Testing

Basic database testing was performed using PostgreSQL and Beekeeper Studio.

The database testing included:

* Database structure inspection
* Table inspection
* Data retrieval
* Filtering
* Data modification
* JOIN queries
* GROUP BY queries
* Basic data validation

The SQL queries and database documentation are stored separately in the `sql/` directory.

---

# 13. Test Results Summary

| Testing Activity             | Result    |
| ---------------------------- | --------- |
| Functional Test Cases        | 25 Passed |
| Failed Test Cases            | 0         |
| Blocked Test Cases           | 0         |
| Exploratory Testing Sessions | 2         |
| Defects Identified           | 5         |
| Jira Bug Reports             | 5         |
| API Testing                  | Completed |
| Database Testing             | Completed |

---

# 14. Test Evidence

The following evidence was collected during the project:

* Qase test case screenshots
* Qase test run screenshot
* Jira bug screenshots
* Exploratory testing evidence
* API/Postman screenshots
* Database screenshots
* SQL query results

Evidence is stored in the project's `screenshots/` directory.

---

# 15. Traceability

The project maintains traceability between the main QA artifacts:

```text
Test Plan
    ↓
Scope
    ↓
Checklist
    ↓
Test Cases
    ↓
Qase Test Run
    ↓
Test Results
    ↓
Jira Bug Reports
```

Exploratory testing follows a separate path:

```text
Exploratory Testing Session
    ↓
Defect Identified
    ↓
Jira Bug Report
```

---

# 16. Conclusion

The planned functional test suite consisting of 25 test cases was successfully executed against the standard Practice Software Testing environment, with all 25 test cases passing.

Additional exploratory testing was performed against the With-Bugs environment. During these sessions, 5 defects were identified and documented in Jira, including defects affecting the shopping cart and checkout/payment functionality.

The project demonstrates a complete manual QA workflow including test planning, checklist creation, test case design, test execution, exploratory testing, defect reporting, API testing, database validation, and final test reporting.

The testing activities provided coverage of the application's main user flows and demonstrated the use of both structured and exploratory testing approaches.
