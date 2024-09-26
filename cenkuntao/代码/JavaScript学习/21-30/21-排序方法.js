let values = [0, 4, 33, -9, -9, 0];

values.sort((a, b) => a < b ? 1 : a > b ? -1 : 0);

console.log(values); // [ 33, 4, 0, 0, -9, -9 ]

values.sort((a, b) => a > b ? 1 : a < b ? -1 : 0);

console.log(values); // [ -9, -9, 0, 0, 4, 33 ]