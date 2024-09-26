function* generatorFn() {
    for (const x of[1, 2, 3]) {
        try {
            yield x;
        } catch (e) {}
    }
}

const g = generatorFn();

console.log(g.throw());
console.log(g.next());
console.log(g.next());
// { value: 1, done: false }
// { value: 2, done: false }
// { value: 3, done: false }