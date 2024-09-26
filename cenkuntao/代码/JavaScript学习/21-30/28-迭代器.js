const a = [1, 2, 3, "4", { b: 5, c: 6 }];

const a1 = [1];

let iter = a[Symbol.iterator]();

let iter2 = iter[Symbol.iterator]();

console.log(iter2 === iter); // true

for (const i of iter) {
    console.log(i);
    if (i > 2) {
        console.log(`stop or not?`);
        break;
    }
}
// 1
// 2
// 3
// stop or not?

for (const i of iter) {
    console.log(i);
}
// 4
// { b: 5, c: 6 }