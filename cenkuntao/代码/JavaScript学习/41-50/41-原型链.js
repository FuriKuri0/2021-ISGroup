// 4. 在SuperType的方法上面寻找 找不到
function SuperType() {
    this.property = true;
}

// 5. 在SuperType的prototype的方法上面寻找 找到了 返回值是this.prototype 此值为true
SuperType.prototype.getSuperValue = function() {
    return this.property;
};

// 1. 在SubType的方法上面寻找 找不到
function SubType() {
    this.subProperty = false;
}

// 3. SubType的prototype定义在SuperType上面
SubType.prototype = new SuperType();

// 2. 在SubType的prototype的方法上面寻找 找不到
SubType.prototype.getSubValue = function() {
    return this.subProperty;
};

let instance = new SubType();

// 目的：寻找getSuperValue方法
console.log(instance.getSuperValue()); // true