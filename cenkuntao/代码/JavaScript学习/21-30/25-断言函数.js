const people = [{
        name: `xiaoming`,
        age: 11,
    },
    {
        name: `xiaowang`,
        age: 27,
    },
];

console.log(people.findIndex((element, index, array) => element.age < 17)); // 0

console.log(people.find((element, index, array) => element.age < 17)); // { name: 'xiaoming', age: 11 }