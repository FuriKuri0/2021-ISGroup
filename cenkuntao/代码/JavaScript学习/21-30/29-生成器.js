function* generatorFn(initial) {
    console.log(initial);
    console.log(yield);
}

const generatorObject = generatorFn('foo');

generatorObject.next(`zro`);
generatorObject.next('abb');
generatorObject.next(`cdd`);
// foo
// abb