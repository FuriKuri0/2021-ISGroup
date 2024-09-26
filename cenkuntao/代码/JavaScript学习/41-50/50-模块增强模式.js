// 此函数是立即调用并返回函数表达式的值给singleton
// 通过singlrton就可以调用公有方法 进而使用私有数据 私有方法
let singleton = function() {
    // 私有变量 私有函数
    let privateVariable = 10;

    function privateFunction() {
        return false;
    }

    // 创建对象
    let object = new CustomType();

    // 增添特权/公有属性和方法
    // 定义了一个匿名函数 这是一个闭包函数 与singleton的活动对象关联
    object.publicMethod = function() {
        privateVariable++;
        return privateFunction();
    };

    // 返回对象 这个就是哈数表达式的返回值
    return object;
}();