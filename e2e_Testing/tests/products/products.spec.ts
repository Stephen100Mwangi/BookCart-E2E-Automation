import { test, expect } from "@playwright/test";
import { loginCredentials } from "../../utils/constants";

test("Verify access to the book product page", async ({ page }) => {
  await page.goto("https://bookcart.azurewebsites.net/");
  await expect(page).toHaveURL("https://bookcart.azurewebsites.net/");

  await expect(page.getByRole("button", { name: "Book Cart" })).toBeVisible();
});

test("Verify that search functionality works", async ({ page }) => {
  await page.goto("https://bookcart.azurewebsites.net/");
  await page.getByRole("combobox", { name: "search" }).click();
  await page.getByRole("combobox", { name: "search" }).fill("Book");
  await page.getByRole("combobox", { name: "search" }).press("Enter");
  //   Assert search results here
});

test("Verify that filter by category functionality works", async ({ page }) => {
  await page.goto("https://bookcart.azurewebsites.net/");

  await page.getByText("All Categories").click();
  await expect(page).toHaveURL("https://bookcart.azurewebsites.net/");
  await page.locator("span").filter({ hasText: "Biography" }).first().click();
  await expect(page).toHaveURL(
    "https://bookcart.azurewebsites.net/filter?category=biography",
  );
  const activeCategory = await page
    .locator("span")
    .filter({ hasText: "Biography" }).first();
  await expect(activeCategory).toHaveAttribute("class", "active-category");
});
