const methodKey = `sayName`;
let person = {
    name_: ``,
    // 简写了方法名
    get name() {
        return this.name_;
    },
    // 由name属性的get函数进行简单的获取  没有这个get函数并不影响设置this.name_的值
    // 再由name属性的set函数设置this.name_
    // 这样调用sayName（）的时候this.name_就是`Matt`了
    set name(name) {
        this.name_ = name;
    },
    // 这里使用可计算属性
    [methodKey]() {
        console.log(`My name is ${this.name_}`);
    }
};

person.name = `Matt`; // get和set都是访问器属性name的函数
person.sayName(); // My name is Matt