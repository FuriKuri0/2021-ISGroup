function addTwo(x) { return x + 2; }

function addThree(x) { return x + 3; }

function addFive(x) { return x + 5; }

// 利用扩展操作符进行参数收集
function compose(...fns) {
    // 返回一个箭头函数 箭头函数参数为x
    // 利用Array.reduce（）方法进行归并
    // 利用期约进行参数传递
    return (x) => fns.reduce((promise, fn) => promise.then(fn), Promise.resolve(x))
}

let addTen = compose(addTwo, addThree, addFive);

addTen(8).then(console.log); // 18