Feature: Search and Purchase Samsung M51 Smartphone
    Background:
        Given Користувач відкриває веб-сайт "rozetka"

    Scenario Outline: Search Samsung M51 Smartphone on "Rozetka" website
        Given Користувач вводить "<phone_model>" у поле пошуку
        When Відображається список продуктів, що відповідають запиту
        Then Користувач вибирає смартфон "<phone_model>" зі списку
        Then відкривається сторінка продукту з вказаним смартфоном
        Then на сторінці продукту відображається інформація про смартфон "<phone_model>"
        Then на сторінці продукту присутня кнопка 'Buy'
        Then ціна смартфона "<phone_model>" становить "<phone_price>"

        Examples:
            | phone_model | phone_price |
            | Samsung M51 | 9000        |
            | Samsung M31 | 8000        |

    Scenario: Придбати смартфон Samsung M51 на сайті «Rozetka»
        Given Користувач відкриває сторінку продукту "<phone_model>" на веб-сайті "Rozetka"
        Then інформація про смартфон "<phone_model>" відображається на сторінці продукту
        Then кнопка 'Buy' присутня на сторінці продукту
        Then ціна смартфона Samsung M51 - 9000
        When Користувач натискає кнопку 'Buy'
        Then Користувач перевіряє, чи авторизований
        When Користувач авторизований
        Then товар додається до кошика
        When Користувач переходить до кошика
        Then відкривається сторінка кошика з доданим товаром
        Then Смартфон Samsung M51 присутній в кошику
        When Користувач оформляє замовлення
        Then Відображається підтвердження успішного оформлення замовлення
