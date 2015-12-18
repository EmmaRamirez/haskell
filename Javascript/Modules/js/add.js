function add(a, b) {
  return a + b;
}
module.exports = add;

/*
AMD Pattern
------------------------
define([], function(){
return function add(a, b) {
  return a + b;
};
});

define([], function(){
 /// etc
})

define["./reduce", "./add"], function (reduce, add) {
  return function sum(list) {
    return reduce(list, add, 0);
  };
});

define(["./sum"], function (sum) {
    // code...
});

*/
