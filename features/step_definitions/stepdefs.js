const assert = require("assert");
const { Given, When, Then } = require("@cucumber/cucumber");
let ShoppingCart = [];
Given(
  "the following products are added to the Shopping cart:",
  function (dataTable) {
    ShoppingCart = dataTable.hashes();
  }
);
When("I Calculate the total cost", function () {
  let = totalCost = 0;
  for (let index = 0; index < ShoppingCart.length; index++) {
    const products = ShoppingCart[index];
    totalCost += parseInt(products.Price);
  }
  this.totalCost = totalCost;
});
Then("the total cost should be {int}", function (expectedTotalCost) {
  const actualTotalCost = this.totalCost;

  assert.strictEqual(actualTotalCost, expectedTotalCost);
});
