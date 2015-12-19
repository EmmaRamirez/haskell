"use strict";

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var javascript = "YAY!";
var evens = [2, 4, 6, 8];

// Arrows
var odds = evens.map(function (v) {
  return v + 1;
});
var nums = evens.map(function (v, i) {
  return v + i;
});
var pairs = evens.map(function (v) {
  return { even: v, odd: v + 1 };
});

// Statement bodies
nums.forEach(function (v) {
  if (v % 5 == 0) fives.push(v);
});

// lexical this
var bob = {
  _name: "Bob",
  _friends: [],
  printFriends: function printFriends() {
    var _this = this;

    this._friends.forEach(function (f) {
      return console.log(_this._name + " knows " + f);
    });
  }
};

// Classes

var Hero = function Hero(name) {
  _classCallCheck(this, Hero);

  this.name = name;
  this.strength = 10;
};

// String interpolation

var name = "Erick",
    time = "today";
"Hello " + name + ", how are you " + time + "?";