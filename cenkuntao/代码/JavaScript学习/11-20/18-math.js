// max与扩展操作符
let values = [1, 3, 5, 99, 4, 0];

let max = Math.max(...values);

console.log(max);

// 函数 功能：生成指定范围的随机数
function selectFrom(lowerValue, upperValue) {
    let choices = upperValue - lowerValue + 1;
    return Math.floor(Math.random() * choices + lowerValue);
}

let num = selectFrom(10, 100000);
console.log(num);