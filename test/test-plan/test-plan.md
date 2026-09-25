# Test Plan

## 1. Project

**Application:** Practice Software Testing

**Application URL:**
<https://practicesoftwaretesting.com/>

**Testing Environment:** Standard Version

**Testing Type:** Manual Testing

---

## 2. Objective

The objective of this test plan is to verify the main functional and non-functional aspects of the Practice Software Testing application and identify defects before considering the tested functionality ready.

The testing focuses on the main user flows available in the application.

---

## 3. Scope

### In Scope

The following functionality is included in the planned testing:

* User registration
* User login
* User logout
* Product search
* Product filtering
* Product sorting
* Product details
* Product favorites
* Shopping cart
* Cart item management
* Checkout
* Billing information
* Payment-related UI
* Basic navigation
* Form validation
* Basic responsive behavior
* Basic usability checks

---

## 4. Out of Scope

The following activities are outside the scope of the planned test execution:

* Full performance testing
* Load testing
* Stress testing
* Full penetration testing
* Source code review
* Full accessibility audit
* Full compatibility testing across all browsers and devices
* Production monitoring
* Infrastructure testing

API testing and exploratory testing are documented separately in this portfolio.

---

## 5. Test Strategy

The project uses several complementary testing approaches.

### Planned Testing

Planned testing is performed using:

* Functional checklist
* Non-functional checklist
* Test cases
* Qase test execution

### Exploratory Testing

Exploratory testing is performed separately against the with-bugs version of the application.

### API Testing

API testing is performed separately using Postman against the with-bugs API environment.

### Database Testing

Database testing is performed separately using PostgreSQL and Beekeeper Studio.

---

## 6. Test Levels

The main focus of this portfolio is:

* System-level testing
* API testing
* Database testing

---

## 7. Test Types

The planned UI testing includes:

* Functional testing
* Positive testing
* Negative testing
* Boundary value checks
* Input validation
* UI testing
* Usability checks
* Basic compatibility checks
* Basic responsive testing

---

## 8. Test Management

### Test Case Management

Qase is used to store and organize test cases and test runs.

### Defect Management

Jira is used to document and track defects.

### API Testing

Postman is used for API requests and response validation.

### Database Testing

Beekeeper Studio is used to connect to PostgreSQL and execute SQL queries.

---

## 9. Test Data

Test data includes:

* Valid user credentials
* Invalid user credentials
* New registration data
* Product search terms
* Product data
* Shopping cart data
* Checkout data
* Invalid form values
* Boundary and empty values
* API request data
* Database query parameters

Test data is used only for testing purposes.

---

## 10. Test Environment

### UI

Application:

<https://practicesoftwaretesting.com/>

### Browser

Google Chrome

### Operating System

Windows 11

### Test Management

Qase

### Defect Management

Jira

---

## 11. Entry Criteria

Testing can begin when:

* The application is available.
* The main functionality is accessible.
* Test data is available.
* Required test cases have been prepared.
* The test environment is accessible.

---

## 12. Exit Criteria

Planned testing can be considered complete when:

* All planned test cases have been executed.
* Test results have been recorded in Qase.
* Critical discovered issues have been documented.
* Test evidence has been collected.
* Test results have been summarized in the test report.

---

## 13. Deliverables

The project deliverables include:

* Test Plan
* Functional Checklist
* Non-functional Checklist
* Test Cases
* Test Execution Results
* Exploratory Testing Sessions
* Bug Reports
* Jira Defects
* Test Report
* Postman API Collection
* API Testing Evidence
* SQL Queries
* Database Documentation
* Database Testing Evidence

---

## 14. Risks

Potential risks include:

* Application instability
* Changes in test data
* Environment availability issues
* Unexpected application behavior
* Differences between testing environments
* External service failures

---

## 15. Test Execution

The planned UI test execution is performed in Qase.

Current planned test execution:

* Total test cases: 25
* Passed: 25
* Failed: 0
* Blocked: 0

Exploratory testing results are reported separately because exploratory testing is performed against the with-bugs version of the application.
