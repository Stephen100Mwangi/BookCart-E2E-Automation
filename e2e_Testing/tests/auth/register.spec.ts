import { expect, test } from "@playwright/test";
import { registerCredentials } from "../../utils/constants";

test.describe("Register Page", () => {
  test("should display register form", async ({ page }) => {
    await page.goto("https://bookcart.azurewebsites.net/register");
    await expect(page.locator("mat-card-title")).toBeVisible();
  });

  test("should register with valid credentials", async ({ page }) => {
    await page.goto("https://bookcart.azurewebsites.net/register");
    await page
      .locator('input[formcontrolname="firstName"]')
      .fill(registerCredentials.firstName);
    await page
      .locator('input[formcontrolname="lastName"]')
      .fill(registerCredentials.lastName);
    await page
      .locator('input[formcontrolname="userName"]')
      .fill(registerCredentials.userName);
    await page
      .locator('input[formcontrolname="password"]')
      .fill(registerCredentials.validPassword);
    await page
      .locator('input[formcontrolname="confirmPassword"]')
      .fill(registerCredentials.validPassword);
  });
});
