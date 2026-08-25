import { test, expect } from "@playwright/test";
import { loginCredentials } from "../../utils/constants";

test.describe("Login Page", () => {
  test("should display login form", async ({ page }) => {
    await page.goto("https://bookcart.azurewebsites.net/login");
    await expect(page.locator("mat-card-title")).toBeVisible();
  });

  test("should login with valid credentials", async ({ page }) => {
    await page.goto("https://bookcart.azurewebsites.net/login");
    await page.fill(
      'input[formcontrolname="email"]',
      loginCredentials.validUsername,
    );
    await page.fill(
      'input[formcontrolname="password"]',
      loginCredentials.validPassword,
    );
    await page.click('button[type="submit"]');
    await expect.soft(page.locator("mat-card-title")).toHaveText("Dashboard");
  });

  test("should deny login with invalid credentials", async ({ page }) => {
    await page.goto("https://bookcart.azurewebsites.net/login");
    await page.fill(
      'input[formcontrolname="email"]',
      loginCredentials.invalidUsername,
    );
    await page.fill(
      'input[formcontrolname="password"]',
      loginCredentials.invalidPassword,
    );
    await page.click('button[type="submit"]');
    await expect(page.locator("mat-card-title")).toHaveText("Dashboard");
  });

  test("should deny login with empty credentials", async ({ page }) => {
    await page.goto("https://bookcart.azurewebsites.net/login");
    await page.fill(
      'input[formcontrolname="email"]',
      loginCredentials.emptyField,
    );
    await page.fill(
      'input[formcontrolname="password"]',
      loginCredentials.emptyField,
    );
    await page.click('button[type="submit"]');
    await expect(page.locator("mat-card-title")).toHaveText("Dashboard");
  });
});
