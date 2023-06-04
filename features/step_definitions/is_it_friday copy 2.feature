Feature: Is it Friday yet?
    Everybody wants to know ehan it's Friday
    Background:
        Given today is a first summer month
    Scenario Outline: Some day isn't or is Friday
        Given today is "<day>"
        When I ask whether it's Friday yet
        Then I should be told "<answer>"
        Examples:
            | day            | answer |
            | Friday         | TGIF   |
            | Sunday         | Nope   |
            | some other day | Nope   |