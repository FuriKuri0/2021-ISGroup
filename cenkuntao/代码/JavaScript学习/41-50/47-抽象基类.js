// 抽象基类
class Vehicle {
    constructor() {
        console.log(new.target);
        if (new.target === Vehicle) {
            throw new Error(`Vehicle cannot be directly instantiated`);
        }
    }
}

// 派生类
class Bus extends Vehicle {};

new Bus(); // [class Bus extends Vehicle]
// new Vehicle(); // Error: Vehicle cannot be directly instantiated