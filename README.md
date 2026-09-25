# QA Portfolio — Junior Manual QA

This repository contains my Junior Manual QA portfolio based on the **Practice Software Testing** web application.

The portfolio demonstrates practical experience in:

* Manual Testing
* Test Planning
* Checklists
* Test Cases
* Exploratory Testing
* Bug Reporting
* API Testing
* SQL / Database Testing
* Jira
* Qase
* Postman
* PostgreSQL
* Beekeeper Studio

---

## Application Under Test

**Practice Software Testing**

Normal version:

<https://practicesoftwaretesting.com/>

With Bugs version:

<https://with-bugs.practicesoftwaretesting.com/>

API:

<https://api-with-bugs.practicesoftwaretesting.com/>

The normal version was used for planned manual testing and execution of test cases.

The With Bugs version was used for exploratory testing and defect identification.

---

## Tools

| Tool             | Purpose                             |
| ---------------- | ----------------------------------- |
| Jira             | Bug tracking and defect management  |
| Qase             | Test case management and test runs  |
| Postman          | API testing                         |
| PostgreSQL       | Database                            |
| Beekeeper Studio | Database management and SQL queries |
| GitHub           | Version control and portfolio       |

---

## Portfolio Structure

```text
QA-Portfolio/
│
├── README.md
│
├── test/
│   │
│   ├── test-plan/
│   │   └── test-plan.md
│   │
│   ├── checklist/
│   │   ├── functional-checklist.md
│   │   └── non-functional-checklist.md
│   │
│   ├── test-cases/
│   │   ├── README.md
│   │   └── screenshots/
│   │       ├── qase-test-cases.png
│   │       ├── qase-test-case-detail.png
│   │       └── qase-test-run.png
│   │
│   ├── exploratory-testing/
│   │   ├── session-001.md
│   │   ├── session-002.md
│   │   └── screenshots/
│   │       ├── session-001.png
│   │       └── session-002.png
│   │
│   ├── bug-reports/
│   │   ├── README.md
│   │   └── screenshots/
│   │       ├── jira-bugs-list.png
│   │       ├── jira-bug-detail.png
│   │       └── jira-bug-evidence.png
│   │
│   └── test-report/
│       └── test-report.md
│
├── api/
│   ├── README.md
│   ├── practice-software-testing.postman_collection.json
│   └── screenshots/
│       ├── postman-collection.png
│       └── postman-request-response.png
│
├── sql/
│   ├── README.md
│   ├── database-schema.md
│   ├── queries.sql
│   └── screenshots/
│       ├── database.png
│       ├── table-data.png
│       └── sql-query.png
│
└── .gitignore
```

---

# Manual Testing

The `test/` directory contains the main manual testing artifacts.

### Test Plan

The test plan defines the testing objectives, scope, approach, environment, and other important testing information.

Location:

```text
test/test-plan/test-plan.md
```

### Checklists

Functional and non-functional checklists were created to provide structured coverage of the application.

```text
test/checklist/
├── functional-checklist.md
└── non-functional-checklist.md
```

### Test Cases

Manual test cases were created and managed in Qase.

The test cases cover important application functionality such as:

* Authentication
* Login
* Registration
* Product functionality
* Cart
* Checkout
* User functionality
* Other core application features

Qase screenshots and supporting information are available in:

```text
test/test-cases/
```

### Test Run

The test cases were executed in Qase and the results were recorded in a test run.

---

# Exploratory Testing

Exploratory testing was performed against the **With Bugs** version of the application.

Application:

<https://with-bugs.practicesoftwaretesting.com/>

Exploratory testing sessions are documented in:

```text
test/exploratory-testing/
```

Each session contains:

* Session charter
* Areas explored
* Test approach
* Observations
* Defects identified
* Evidence
* Session summary

Only defects actually observed during the corresponding exploratory testing session are listed in that session.

---

# Bug Reporting

Confirmed defects discovered during testing were documented using Jira.

Bug report documentation and screenshots are stored in:

```text
test/bug-reports/
```

A typical bug report contains:

* Summary
* Description
* Preconditions
* Steps to Reproduce
* Actual Result
* Expected Result
* Severity
* Priority
* Environment
* Evidence

Jira was used as the main defect tracking tool.

---

# API Testing

API testing was performed using **Postman** against the With Bugs API.

API:

```text
https://api-with-bugs.practicesoftwaretesting.com/
```

The Postman collection is available in:

```text
api/practice-software-testing.postman_collection.json
```

The collection contains requests covering areas such as:

* Authentication
* Products
* Categories
* Brands
* Authorization
* Admin authorization
* Invoices
* Positive scenarios
* Negative scenarios

Environment variables are used for values such as:

```text
baseUrl
accessToken
adminToken
```

Authentication tokens are obtained during login and reused in subsequent authorized requests.

The detailed API testing documentation is available in:

```text
api/README.md
```

---

# SQL / Database Testing

SQL testing was performed using **PostgreSQL** and **Beekeeper Studio**.

The SQL section contains:

```text
sql/
├── README.md
├── database-schema.md
├── queries.sql
└── screenshots/
```

The database testing demonstrates basic SQL skills including:

* Creating database objects
* Working with tables
* Inserting test data
* Selecting data
* Filtering data
* Joining tables
* Working with relationships
* Verifying stored data

Example query:

```sql
SELECT
    users.name,
    orders.id,
    orders.total
FROM users
JOIN orders
    ON users.id = orders.user_id;
```

---

# Testing Approach

The portfolio demonstrates several complementary testing activities.

### Planned Testing

The normal version of the application was used for planned testing activities:

* Test Plan
* Functional Checklist
* Non-functional Checklist
* Test Cases
* Qase Test Run

### Exploratory Testing

The With Bugs version was used for exploratory testing and defect discovery.

### API Testing

The With Bugs API was tested independently using Postman.

### Database Testing

SQL queries were used to inspect and verify data in PostgreSQL.

---

# Test Documentation

The portfolio demonstrates the relationship between different testing artifacts:

```text
Test Plan
    ↓
Testing Scope / Approach
    ↓
Checklists
    ↓
Test Cases
    ↓
Test Execution
    ↓
Defect Reporting
    ↓
Test Report
```

Exploratory testing follows a more flexible approach and does not require every exploratory test to originate from a predefined test case.

---

# Results

The portfolio contains practical examples of:

* Test planning
* Functional testing
* Non-functional testing
* Test case design
* Test execution
* Exploratory testing
* Defect reporting
* API testing
* Authorization testing
* Negative testing
* SQL queries
* Database verification
* Test documentation

The repository is intended to demonstrate practical Junior Manual QA skills and the ability to document testing activities clearly.

---

# Author

Junior Manual QA portfolio demonstrating practical testing skills and tools.
