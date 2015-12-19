class Vehicle {
  constructor(make, year) {
    this._make = make;
    this._year = year;
  }

  static compare(a, b) {
    // ...
  }

  get make() {
    return this._make;
  }

  get year() {
    return this._year;
  }

  toString() {
    return `${this.make} ${this.year}`;
  }
}

var vehicle = new Vehicle('Toyota Carolla', 2009);

console.log(vehicle.make);
vehicle.make = 'Ford Mustang';
console.log(vehicle.toString());

// Class declarations cannot be hoisted!

class Motorcycle extends Vehicle {
  constructor(make, year) {
    super(make, year);
  }

  toString() {
    // we can call up super!
    return 'Motorcycle' + super.toString();
  }

  static compare(a, b) {
    if (super.cmpare(a, b)) {
      // ...
    }
  }
}

function createInterface(name) {
  return class {
    ['findBy' + name]() {
      return 'Found by ' + name;
    }
  }
}

const Interface = createInterface('Email');
const instance = new Interface();

console.log(instance.findByEmail());
