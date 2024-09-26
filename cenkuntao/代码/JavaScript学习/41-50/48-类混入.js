class Vehicle {}

let FooMixin = (Superclass) => class extends Superclass {
    // 这里面放自己需要的代码
    foo() {
        console.log(`foo`);
    }
};

let BarMixin = (Superclass) => class extends Superclass {
    bar() {
        console.log(`bar`);
    }
};

let BazMixin = (Superclass) => class extends Superclass {
    baz() {
        console.log(`baz`);
    }
};

// 通过这个辅助函数 将嵌套调用展开 不过这个函数我看不懂
function mix(BaseClass, ...Mixins) {
    return Mixins.reduce((accumulator, current) => current(accumulator), BaseClass);
}

class Bus extends mix(Vehicle, FooMixin, BarMixin, BazMixin) {}

let b = new Bus();
b.foo(); // foo
b.bar(); // bar
b.baz(); // baz