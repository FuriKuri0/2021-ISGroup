// `use strict`;

// // 基础框架
// function fib(n) {
//     return fibImpl(0, 1, n);
// }

// function fibImpl(a, b, n) {
//     if (n === 0) {
//         return a;
//     }
//     return fibImpl(b, a + b, n - 1);
// }

// console.log(fib(1000));

function fib(n) {
    if (n < 2) {
        return n;
    }
    return fib(n - 1) + fib(n - 2);
}

console.log(fib(1000));