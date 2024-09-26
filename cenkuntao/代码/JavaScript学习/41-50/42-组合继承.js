// 组合继承实现了数据的私有以及方法的共享
function SuperType(name) {
    this.name = name;
    this.color = [`black`, `blue`, `white`];
}

SuperType.prototype.sayName = function() {
    console.log(this.name);
};

function SubType(name, age) {
    SuperType.call(this, name);
    this.age = age;
}

SubType.prototype = new SuperType();

SubType.prototype.sayAge = function() {
    console.log(this.age);
}

const instance1 = new SubType(`Marry`, 19);
instance1.color.shift();

console.log(instance1.color); // [ 'blue', 'white' ]
instance1.sayAge(); // 19
instance1.sayName(); // Marry

const instance2 = new SubType(`Tracy`, 23);
instance2.color.push(`gray`);

console.log(instance2.color); // [ 'black', 'blue', 'white', 'gray' ]
instance2.sayAge(); // 23
instance2.sayName(); // Tracy