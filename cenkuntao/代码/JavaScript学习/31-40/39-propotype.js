function Person(name) {
    Person.prototype.name = name;
    Person.prototype.sayName = function() {
        console.log(Person.prototype.name);
    }
}

const person1 = new Person(`lufi`);
const person2 = new Person(`hankuke`);

console.log(person1.name); // hankuke
console.log(person2.name); // hankuke
// 这是连原型都被修改了？