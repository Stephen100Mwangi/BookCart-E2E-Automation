Developer
   │
   ▼
Feature Branch
   │
   ▼
Pull Request → main
   │
   ├── Lint / Code Quality
   │
   ├── Unit Tests
   │
   ├── API / BDD Tests
   │       └── Gherkin scenarios
   │
   ├── Allure Results
   │       └── allure-results/
   │
   ├── Build
   │
   └── Quality Gate
           │
       ┌───┴────┐
       │        │
     FAIL      PASS
       │        │
     Stop      Merge
                │
                ▼
          Deploy to Staging
                │
                ▼
        Smoke / Regression Tests
                │
                ▼
          Allure Report
                │
                ▼
          Production Deploy