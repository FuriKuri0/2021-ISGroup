const a1 = [1, 2, 3, 4];

const a2 = [5, 6];

a2[Symbol.isConcatSpreadable] = false;

const a3 = {
    [Symbol.isConcatSpreadable]: true,
    length: 2,
    0: 5,
    1: 6
};

console.log(a1.concat(a2));

console.log(a1.concat(a3));