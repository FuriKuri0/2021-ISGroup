function* generatorFn() {
    return `foo`;
}

const g = generatorFn();

console.log(g.next()); // { value: 'foo', done: true }