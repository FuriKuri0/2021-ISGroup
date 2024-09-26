let person = {};

Object.defineProperty(person, `age`, {
    configurable: false,
    enumerable: true,
    writable: true,
    value: 3,
});

console.log(person.age);

Object.defineProperty(person, `name`, {
    value: 2,
});

console.log(person.age);