var colors = ["blue", "red", "green"];

colors.forEach(function(color, index) {
  console.log("Color at position " + index + " is " + color);
});

arr.forEach(function(item, index, array) {
  console.log(item, index);
});

function square(x) {
  return x * x;
}
[1, 2, 3].map(square);

[1, 2, 3, 4, 5].reduce(function(prev, current) {
  return prev + current;
});

sentence = ["The", "ass", "was", "fat."];
words = sentence.split(" ");

var total = words.reduce(function(prev, word) {
  return prev + word.length;
}, 0);

average = total / words.length;

[1, 2, 3].map(square).reduce(function(total, x) { return x + total });

var sales = [100, 230, 55];

totalAfterTaxSales = sales.map(function(amt) {
  return amt * 1.15;
}).reduce(function(prev, curr) {
  return prev + current;
});

var numbers = [2, 3, 5, 6, 7, 8, 9, 12];
numbers.filter(function(number) {
  return number % 2 == 0;
});

function isBiggerThan10(element, index, array) {
  return element > 10;
}
[2, 4, 5, 6, 7].some(isBiggerThan10);

arr.fill(value, start, end);

[1, 2, 3].fill(4); // [4, 4, 4]


[].fill.call({ length: 3}, 4); // returns arr w/ 4 & length 3
