// 这里是先执行函数命名表达式 因为它在括号里面
// 执行函数命名表达式的结果是返回一个函数的地址 跟函数表达式声明一样
// 其实这里括号不要也可以
const factorial = (function f(num) {
    if (num <= 1) {
        return 1;
    } else {
        return num * f(num - 1);
    }
});

// 首先 factorial是动不了的 其次动了也没有意义
// 要减少耦合 只是说赋值给别人后 别人也可以用
const anotherFactorial = factorial;

console.log(factorial); // [Function: f]
console.log(anotherFactorial(3));