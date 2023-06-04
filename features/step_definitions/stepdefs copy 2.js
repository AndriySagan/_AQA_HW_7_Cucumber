const assert = require("assert");
const { Given, When, Then } = require("@cucumber/cucumber");
function isItFriday(today) {
  // if(today === "Friday") {
  //     return "TGIF"
  // } else {
  //     return "Nope"
  // }
  return today === "Friday" ? "TGIF" : "Nope";
}
Given("today is a first summer month", function () {
  console.log("Yes it is first summer month");
});
Given("today is {string}", function (givenDay) {
  this.today = givenDay;
});
When("I ask whether it's Friday yet", function () {
  this.actualAnswer = isItFriday(this.today);
});
Then("I should be told {string}", function (expectedAswer) {
  assert.strictEqual(this.actualAnswer, expectedAswer);
});
