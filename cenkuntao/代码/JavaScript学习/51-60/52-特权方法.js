function MyObject() {
    // 私有变量和私有函数
    let privateVariable = 10;

    function privateFunction() {
        return false;
    }

    // 公有方法 此函数是与MyObject的活动对象关联的
    // 在实例上调用此方法 使privateVariable自增 且调用privateFunction函数
    // 实现了 公有方法访问私有数据
    this.publicMethod = function() {
        privateVariable++;
        return privateFunction();
    };
}

// 这是一个匿名函数 且此函数表达式立刻执行 
(function() {
    // 私有变量和私有函数
    let privateVariable = 10;

    function privateFunction() {
        return false;
    }

    // 创建对象
    MyObject = function() {};

    // 通过prototype共享方法 
    MyObject.prototype.publicMethod = function() {
        privateVariable++;
        return privateFunction();
    };
})();