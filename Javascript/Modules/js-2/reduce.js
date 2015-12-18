export default function reduce(list, iteratee, memo) {
  list.forEach(function (item) {
    memo = iteratee(item, memo);
  });
  return memo;
}
