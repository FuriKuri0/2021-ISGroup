const o1 = {
    age: 13,
};

const o2 = Object.freeze({
    age: 14,
});

o1.age = 0;

o2.age = 0;

o2.name = `xiaoming`;

console.log(`${o1.age}  ${o2.age}  ${02.name}`); // 0  14  undefined