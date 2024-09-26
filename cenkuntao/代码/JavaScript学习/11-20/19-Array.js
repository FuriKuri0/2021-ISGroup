let a = [1, 2, 3, 4, 5];

let aEntries = Array.from(a.entries());

let aKeys = Array.from(a.keys());

let aValues = Array.from(a.values());

console.log(aEntries); // [ [ 0, 1 ], [ 1, 2 ], [ 2, 3 ], [ 3, 4 ], [ 4, 5 ] ]

console.log(aKeys); // [ 0, 1, 2, 3, 4 ]

console.log(aValues); // [ 1, 2, 3, 4, 5 ]

// 利用解构拆分键值对
for (const [idx, element] of a.entries()) {
    console.log(`${idx}:${element}`);
}
// 0:1
// 1:2
// 2:3
// 3:4
// 4:5