// 一个随机数组，将所有大于0的值相加。两句以内
// 思路：遍历目标数组获得大于0的元素并将这些元素组成一个新数组
// 将新数组的所有元素相加
const arr = [-4, 0, 2, 0, 4, 0, -3, -9];

let filterArr = arr.filter((item, index, array) => item > 0);

console.log(filterArr);

const result = filterArr.reduce((prev, cur, index, array) => prev + cur);

console.log(result);

let result2 = arr.filter((item, index, array) => item > 0).reduce((prev, cur, index, array) => prev + cur);

console.log(result2);