# BookCart E2E Test Automation

[![Playwright](https://img.shields.io/badge/Playwright-2E2E2E?logo=playwright\&logoColor=white)](https://playwright.dev/)
[![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?logo=typescript\&logoColor=white)](https://www.typescriptlang.org/)
[![Cucumber](https://img.shields.io/badge/Cucumber-23D96C?logo=cucumber\&logoColor=white)](https://cucumber.io/)

An end-to-end test automation project for the [BookCart](https://bookcart.azurewebsites.net/) e-commerce application, built using **Playwright, TypeScript, Node.js, Cucumber, BDD, and Gherkin**.

The project focuses on validating critical customer journeys while demonstrating scalable QA automation practices, including API testing, cross-browser testing, visual regression testing, and maintainable BDD test design.

> **Status:** 🚧 Work in Progress

---

## 🎯 Project Objectives

The primary goal is to build a maintainable and reliable automation suite covering the application's critical user journeys:

* User registration and authentication
* Product search and navigation
* Shopping cart management
* Checkout workflow
* API validation
* Cross-browser compatibility
* Visual regression testing

---

## 🛠️ Tech Stack

| Technology     | Purpose                             |
| -------------- | ----------------------------------- |
| **Playwright** | End-to-end browser automation       |
| **TypeScript** | Test implementation and type safety |
| **Node.js**    | Runtime environment                 |
| **Cucumber**   | BDD test execution                  |
| **Gherkin**    | Business-readable test scenarios    |
| **Git/GitHub** | Version control and collaboration   |

---

## 📁 Project Structure

```text
.
├── API_Testing/
│   └── API test scenarios and validation
│
├── CrossBrowser_Testing/
│   └── Cross-browser test configuration and scenarios
│
├── e2e_Testing/
│   └── End-to-end UI automation
│
├── Visual_Testing/
│   └── Visual regression and UI validation
│
├── features/
│   └── BDD/Gherkin feature files
│
├── step-definitions/
│   └── Cucumber step implementations
│
├── playwright.config.ts
├── package.json
└── README.md
```

> The structure will evolve as additional automation capabilities are implemented.

---

## 🧪 Testing Areas

### E2E Testing

The core test suite focuses on complete user journeys across the BookCart application.

Planned coverage includes:

* Registration
* Login
* Book search
* Category navigation
* Product selection
* Add to cart
* Update cart quantity
* Remove from cart
* Checkout

### API Testing

API-level testing will validate backend behavior independently from the UI.

Focus areas include:

* Endpoint availability
* Request/response validation
* Status codes
* Response payloads
* Error handling

### Cross-Browser Testing

The automation suite will be configured to validate application behavior across:

* Chromium
* Firefox
* WebKit

### Visual Testing

Visual regression tests will help identify unintended UI changes by comparing captured screenshots against approved baselines.

---

## 🥒 BDD & Gherkin

The project uses **Behavior-Driven Development (BDD)** to describe application behavior in a business-readable format.

Example:

```gherkin
Feature: Product Search

  Scenario: Search for a book by title
    Given the user is on the BookCart home page
    When the user searches for a book by title
    Then the matching book should be displayed
```

This approach helps bridge the gap between business requirements, QA, and automation implementation.

---

## ▶️ Getting Started

### Prerequisites

Make sure the following are installed:

* Node.js
* npm
* Git

### Clone the repository

```bash
git clone <repository-url>
cd bookcart-e2e-automation
```

### Install dependencies

```bash
npm install
```

### Install Playwright browsers

```bash
npx playwright install
```

### Run the test suite

```bash
npx playwright test
```

---

## 📊 Test Reporting

Test reporting will provide visibility into:

* Passed tests
* Failed tests
* Execution duration
* Test traces
* Screenshots
* Failure details

Playwright's reporting and debugging capabilities will be used alongside Cucumber reporting as the framework evolves.

---

## 🔍 Automation Principles

This project follows several QA automation best practices:

* **Stable selectors** over fragile XPath/CSS selectors
* **Dynamic waits** instead of fixed delays
* **Meaningful assertions** for every scenario
* **Independent tests** to prevent execution-order dependencies
* **Reusable step definitions**
* **Separation of test data and test logic**
* **Maintainable page/component abstractions**
* **Clear BDD scenarios**
* **Regression-focused automation**

---

## 🚧 Roadmap

* [x] Project setup
* [x] Playwright + TypeScript foundation
* [ ] E2E authentication tests
* [ ] Product search tests
* [ ] Shopping cart tests
* [ ] Checkout tests
* [ ] API test suite
* [ ] Cross-browser execution
* [ ] Visual regression testing
* [ ] Automated reporting
* [ ] CI/CD with GitHub Actions

---

## 👨‍💻 Author

**Stephen Mwangi Wahome**

QA Engineer | Test Automation | Playwright | TypeScript | API Testing | BDD

[Portfolio](https://wahome-stephenportifolio.vercel.app/) · [LinkedIn](https://www.linkedin.com/in/stephen-wahome-a89440373/)