const assert = require("assert");
const { Given, When, Then } = require("@cucumber/cucumber");
const { chromium } = require("playwright");
const { Given: GivenBuy, Then: ThenBuy } = require("@cucumber/cucumber");

let page;
let websiteUrl = "https://www.rozetka.com.ua";

Given("Користувач відкриває веб-сайт {string}", async function (website) {
  const browser = await chromium.launch();
  page = await browser.newPage();
  await page.goto(websiteUrl);
});

Given(
  "Користувач вводить {string} у поле пошуку",
  async function (searchTerm) {}
);

When(
  "Відображається список продуктів, що відповідають запиту",
  async function () {}
);

Then("Користувач вибирає смартфон {string} зі списку", function (string) {});

ThenBuy(
  "відкривається сторінка продукту з вказаним смартфоном",
  function () {}
);
Then(
  "на сторінці продукту відображається інформація про смартфон {string}",
  function (string) {}
);

Then("на сторінці продукту присутня кнопка {string}", function (string) {});

Then(
  "ціна смартфона {string} становить {string}",
  function (string1, string2) {}
);

Given(
  "Користувач відкриває сторінку продукту {string} на веб-сайті {string}",
  function (string1, string2) {}
);

Then(
  "інформація про смартфон {string} відображається на сторінці продукту",
  function (string) {}
);

Then("кнопка 'Buy' присутня на сторінці продукту", function () {});

Then("ціна смартфона Samsung M51 - 9000", function () {});

When("Користувач натискає кнопку 'Buy'", function () {});

Then("Користувач перевіряє, чи авторизований", function () {});

When("Користувач авторизований", function (callback) {
  callback();
});

Then("товар додається до кошика", function () {});

When("Користувач переходить до кошика", function () {});

Then("відкривається сторінка кошика з доданим товаром", function () {});

Then("Смартфон Samsung M51 присутній в кошику", function () {});

When("Користувач оформляє замовлення", function () {});

Then(
  "Відображається підтвердження успішного оформлення замовлення",
  function () {}
);
