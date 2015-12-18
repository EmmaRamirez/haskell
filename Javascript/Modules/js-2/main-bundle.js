(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = add;
function add(a, b) {
  return a + b;
}

},{}],2:[function(require,module,exports){
"use strict";

var _sum = require("./sum");

var _sum2 = _interopRequireDefault(_sum);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

var numbers = [1, 2, 3];
var result = (0, _sum2.default)(numbers);

var outputElement = document.getElementById("output");
outputElement.innerHTML = result;

},{"./sum":4}],3:[function(require,module,exports){
"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = reduce;
function reduce(list, iteratee, memo) {
  list.forEach(function (item) {
    memo = iteratee(item, memo);
  });
  return memo;
}

},{}],4:[function(require,module,exports){
"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = sum;

var _reduce = require("./reduce");

var _reduce2 = _interopRequireDefault(_reduce);

var _add = require("./add");

var _add2 = _interopRequireDefault(_add);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

function sum(list) {
  return (0, _reduce2.default)(list, _add2.default, 0);
}

},{"./add":1,"./reduce":3}]},{},[2]);
