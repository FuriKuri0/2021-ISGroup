function recursivelyCheckEqual(x, ...rest) {
    return Object.is(x, rest[0]) && (rest.length < 2 || recursivelyCheckEqual(...rest));
}

console.log(recursivelyCheckEqual(1, ...[1, 1, 1])); // true
console.log(recursivelyCheckEqual(...[1, 1, 1, 1])); // true
console.log(recursivelyCheckEqual([1, 1, 1, 1])); // false
console.log(recursivelyCheckEqual(1)); // false rest[0]是undefined，即没有第二个参数的情况下，默认为undefined
console.log(recursivelyCheckEqual(1, 1, 1, 1, 1, 1)); // true