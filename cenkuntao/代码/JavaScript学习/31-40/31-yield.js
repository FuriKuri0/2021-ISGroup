function* generatorFn() {
    yield*[1, 2, 3];
}

const g = generatorFn();

for (const k of g) {
    console.log(k);
}
// 1
// 2
// 3