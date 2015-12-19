let javascript = "YAY!";
let evens = [2, 4, 6, 8];

// Arrows
var odds = evens.map(v => v + 1);
var nums = evens.map((v, i) => v + i);
var pairs = evens.map(v => ({even: v, odd: v + 1}));

// Statement bodies
nums.forEach(v => {
  if (v % 5 == 0)
    fives.push(v);
});

// lexical this
var bob = {
  _name: "Bob",
  _friends: [],
  printFriends() {
    this._friends.forEach(f =>
      console.log(this._name + " knows " + f));
  }
}

// Classes
class Hero {
  constructor(name) {
    this.name = name;
    this.strength = 10;
  }
}

// String interpolation
var name = "Erick", time = "today";
`Hello ${name}, how are you ${time}?`

// Destructuring
var [a, , b] = [1, 2, 3];

var { op: a, lhs: { op: b}, rhs: c}
    = getASTNode()

var {op, lhs, rhs} = getASTNode()

function g({name: x}) {
  console.log(x);
}
g({name: 5})

// fail-soft destructring
var [a] = [];
a === undefined;

// fail-soft destructring with defaults
var [a = 1] = [];
a === 1;
