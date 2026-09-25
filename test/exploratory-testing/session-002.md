# Exploratory Testing Session 002

## Session Information

| Field        | Details                                          |
| ------------ | ------------------------------------------------ |
| Application  | Practice Software Testing                        |
| Environment  | `https://with-bugs.practicesoftwaretesting.com/` |
| Session Type | Exploratory Testing                              |
| Focus Area   | Shopping Cart                                    |
| Duration     | 60 minutes                                       |
| Tester       | Andrii                                           |

## Mission

Explore the shopping cart functionality and verify that products, prices and cart actions behave correctly.

## Areas Covered

* Adding products to the cart
* Shopping Cart
* Product price
* Product quantity
* Item subtotal
* Removing products
* Cart state after user actions

## Test Approach

* Exploratory testing
* Positive and negative scenarios
* State-based testing
* Boundary and calculation checks
* Verification of cart actions

## Defects Identified

| ID     | Area          | Defect                                             | Severity | Jira   |
| ------ | ------------- | -------------------------------------------------- | -------- | ------ |
| BUG-03 | Shopping Cart | Cart item subtotal is displayed as `$00.00`        | High     | BUG-03 |
| BUG-04 | Shopping Cart | Delete button does not remove the selected product | High     | BUG-04 |

## Notes

The shopping cart was explored by adding products, checking displayed prices and attempting to remove products. Incorrect subtotal calculation and product removal behavior were identified.

Detailed reproduction steps and evidence for each defect were documented separately in Jira.

## Session Result

2 defects were identified and reported in Jira.
