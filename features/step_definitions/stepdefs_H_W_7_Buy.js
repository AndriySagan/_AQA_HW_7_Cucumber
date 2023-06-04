const { Given: GivenBuy, Then: ThenBuy } = require("@cucumber/cucumber");
// const { Then, When } = require("cucumber");

GivenBuy('Користувач відкриває веб-сайт "{string}"', function (website) {
  // Ваш код для відкриття веб-сайту зі зазначеним website
});

GivenBuy('Користувач вводить "{string}" у поле пошуку', function (searchQuery) {
  // Ваш код для введення searchQuery у поле пошуку
});

ThenBuy(
  'Користувач вибирає смартфон "{string}" зі списку',
  function (phoneModel) {
    // Ваш код для вибору смартфона зі списку зі зазначеним phoneModel
  }
);

ThenBuy("відкривається сторінка продукту з вказаним смартфоном", function () {
  // Ваш код для перевірки відкриття сторінки продукту з вказаним смартфоном
});

ThenBuy(
  'на сторінці продукту відображається інформація про смартфон "{string}"',
  function (phoneModel) {
    // Ваш код для перевірки відображення інформації про смартфон зі зазначеним phoneModel на сторінці продукту
  }
);

ThenBuy(
  'на сторінці продукту присутня кнопка "{string}"',
  function (buttonName) {
    // Ваш код для перевірки наявності кнопки зі зазначеним buttonName на сторінці продукту
  }
);

ThenBuy(
  'ціна смартфона "{string}" становить "{string}"',
  function (phoneModel, price) {
    // Ваш код для перевірки ціни смартфона зі зазначеним phoneModel, яка становить price
  }
);

// додаю сам,
