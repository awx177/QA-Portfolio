# Exploratory Testing Session 001

## Session Information

| Field        | Details                                          |
| ------------ | ------------------------------------------------ |
| Application  | Practice Software Testing                        |
| Environment  | `https://with-bugs.practicesoftwaretesting.com/` |
| Session Type | Exploratory Testing                              |
| Focus Area   | UI, Navigation and Product Discovery             |
| Duration     | 60 minutes                                       |
| Tester       | Andrii                                           |

## Mission

Explore the website's main navigation, user interface and product category functionality to identify unexpected behavior and visual or functional defects.

## Areas Covered

* Website header
* Website logo
* Main navigation
* Home navigation
* Product categories
* Category navigation
* Basic page navigation
* Product discovery

## Test Approach

* Exploratory testing
* User navigation scenarios
* Positive and negative scenarios
* Visual inspection
* Link and navigation verification

## Defects Identified

| ID     | Area              | Defect                                        | Severity | Jira   |
| ------ | ----------------- | --------------------------------------------- | -------- | ------ |
| BUG-01 | Product Discovery | Chainsaw category redirects to a 404 page     | Medium   | BUG-01 |
| BUG-02 | UI / Header       | Website logo is not displayed                 | Low      | BUG-02 |
| BUG-05 | Navigation        | Home navigation redirects to the Contact page | Medium   | BUG-05 |

## Notes

The main navigation and product discovery functionality were explored from a typical user's perspective. Several inconsistencies were identified, including an incorrect category destination, a missing website logo, and incorrect Home navigation behavior.

Detailed reproduction steps and evidence for each defect were documented separately in Jira.

## Session Result

3 defects were identified and reported in Jira.
