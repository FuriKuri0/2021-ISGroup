const a1 = [1, 2, 3, 4];

const a2 = Array.from(a1, x => x - Math.pow(x, 2));

const a3 = Array.from(a1, function(x) {
    return x ** this.exponent;
}, { exponent: 2 });

console.log(a2); // [ 0, -2, -6, -12 ]

console.log(a3); // [ 1, 4, 9, 16 ]