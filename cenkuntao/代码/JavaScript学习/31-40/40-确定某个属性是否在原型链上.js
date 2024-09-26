// 函数 作用 确定某个属性是否存在于实例对象原型上
// Object是实例对象 name是属性名 为字符串
function hasPrototypeProperty(Object, name) {
    return !Object.hasOwnProperty(name) && (name in Object);
}

function Person() {
    Person.prototype.name = 'Mit';
    Person.prototype.age = 13;
}

const person = new Person;

console.log(hasPrototypeProperty(person, `name`)); // true

person.name = `Code`;

console.log(hasPrototypeProperty(person, `name`)); // false

for (k in person) {
    console.log(k);
}