class Person {
    constructor() {
        this.locate = () => console.log(`instance`);
    }
    locate() {
        console.log(`prototype`);
    }
}

const p = new Person();

p.locate(); // instance
Person.prototype.locate(); // prototype