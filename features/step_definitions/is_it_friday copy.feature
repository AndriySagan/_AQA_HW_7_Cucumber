# Feature: Is it Friday yet?

#     Everybody wants to know ehan it's Friday

#     Background:
#         Given today is a first summer month
    
#     @first-test
#     Scenario: Sunday isn't Friday
#         Given today is Sunday
#         When I ask whether it's Friday yet
#         Then I should be told "Nope"

#     @second-test
#     Scenario: Friday isn't Friday
#         Given today is Friday
#         When I ask whether it's Friday yet
#         Then I should be told "TGIF"
#         And I get some rest

#     Examples:
#         | day | answer |
#         | Friday | TGIF |
#         | Sunday | Nope |
#         | some other day | Nope |