# API Testing

## Overview

This section contains API testing activities for the Practice Software Testing application.

The API testing is performed against the dedicated with-bugs API environment.

---

## API Environment

**Base URL:**

<https://api-with-bugs.practicesoftwaretesting.com/>

**Swagger Documentation:**

<https://api-with-bugs.practicesoftwaretesting.com/api/documentation>

The Practice Software Testing project provides a separate API environment for the with-bugs version of the application.

---

## Tool

Postman is used for:

* Sending HTTP requests
* Inspecting responses
* Validating status codes
* Validating response bodies
* Testing positive scenarios
* Testing negative scenarios
* Testing authentication
* Testing authorization
* Testing API validation

---

## API Testing Areas

The collection covers selected API functionality such as:

* User authentication
* Users
* Products
* Categories
* Brands
* Cart
* Favorites
* Invoices
* Payment-related endpoints

The exact endpoints used in the collection are documented in Postman.

---

## Test Scenarios

Examples of API checks include:

### Positive Tests

* Valid request returns an appropriate successful status code.
* Response contains the expected data.
* Response body has the expected structure.
* Authenticated requests work with a valid token.

### Negative Tests

* Invalid request data is rejected.
* Missing required data is handled correctly.
* Unauthorized requests are rejected.
* Invalid authentication data is rejected.
* Invalid resource identifiers are handled correctly.

### Security-related API Checks

The with-bugs environment is also suitable for testing authorization-related behavior.

Examples include checking whether protected resources can be accessed or modified without the required authorization.

Any security-related finding is documented factually as an observed API behavior and reported through the normal defect workflow.

---

## Postman Collection

The Postman collection is stored in:

`practice-software-testing.postman_collection.json`

---

## Screenshots

```text
screenshots/
├── postman-collection.png
└── postman-request-response.png
```

### postman-collection.png

Shows the Postman collection and its request structure.

### postman-request-response.png

Shows an API request and its response, including the HTTP status code and response body.

---

## API Testing Flow

```text
Swagger / API Documentation
        ↓
Select Endpoint
        ↓
Create Request in Postman
        ↓
Send Request
        ↓
Check Status Code
        ↓
Check Response Body
        ↓
Check Expected Behavior
        ↓
Report Defect if Necessary
```
