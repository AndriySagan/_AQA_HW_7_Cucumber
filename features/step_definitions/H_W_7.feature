# Feature: Search and Purchase Samsung M51 Smartphone

#     Background:
#         Given User opens "Rozetka" website

#     Scenario Outline: Search Samsung M51 Smartphone on "Rozetka" website
#         Given User enters "<phone_model>" in the search field
#         When the list of products matching the query appears
#         Then User selects the "<phone_model>" smartphone from the list
#         Then the product page with the mentioned smartphone opens
#         Then the information about "<phone_model>" smartphone is displayed on the product page
#         Then the "Buy" button is present on the product page

#         Examples:
#             | phone_model |
#             | Samsung M51 |
#             | Samsung M31 |

#     Scenario: Purchase Samsung M51 Smartphone on "Rozetka" website
#         Given User opens the product page of Samsung M51 smartphone on "Rozetka" website
#         Then the information about "<phone_model>" smartphone is displayed on the product page
#         Then the "Buy" button is present on the product page
#         When User clicks the "Buy" button
#         Then User checks if authenticated
#         When User is authenticated
#         Then the product is added to the shopping cart
#         When User navigates to the shopping cart
#         Then the shopping cart page with the added product opens
#         Then Samsung M51 smartphone is present in the shopping cart
#         When User places the order
#         Then a confirmation of successful order placement appears
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
