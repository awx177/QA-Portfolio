# Bug Reports

## Overview

This section contains defects identified during testing of the Practice Software Testing application.

The main source of exploratory defects in this portfolio is the dedicated with-bugs version of the application.

**Application:**

<https://with-bugs.practicesoftwaretesting.com/>

---

## Bug Discovery Sources

Defects can originate from two different testing approaches.

### 1. Planned Testing

A defect may be discovered while executing a predefined Qase test case.

In this situation:

```text
Test Case
    ↓
Failed Result
    ↓
Bug Report
    ↓
Jira
```

The Jira issue can contain:

* Source: Test Case
* Related Test Case: TC-XXX

### 2. Exploratory Testing

A defect may be discovered during exploratory testing.

In this situation:

```text
Exploratory Session
    ↓
Observation
    ↓
Confirmed Defect
    ↓
Bug Report
    ↓
Jira
```

The Jira issue can contain:

* Source: Exploratory Testing
* Related Test Case: N/A

---

## Bug Report Structure

Each defect should contain:

* Bug ID
* Title
* Environment
* Preconditions
* Steps to Reproduce
* Actual Result
* Expected Result
* Severity
* Priority
* Evidence
* Source
* Related Test Case, when applicable

---

## Jira

Jira is used for defect tracking.

The portfolio contains screenshots demonstrating:

* Jira bug list
* Jira bug details
* Bug evidence

---

## Screenshots

```text
screenshots/
├── jira-bugs-list.png
├── jira-bug-detail.png
└── jira-bug-evidence.png
```

Only actual defects discovered during testing should be documented as personal test results.

Known defects from the application's bug-hunting documentation may be used later for comparison, but they should not be presented as independently discovered defects unless they were actually found during the tester's own session.
