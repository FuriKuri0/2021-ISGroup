// let p1 = new Promise((resolve, reject) => {
//     console.log(`p1 executor`);
//     setTimeout(resolve, 1000);
// });

// p1.then(() => new Promise((resolve, reject) => {
//         console.log(`p2 executor`);
//         setTimeout(resolve, 1000);
//     }))
//     .then(() => new Promise((resolve, reject) => {
//         console.log(`p3 executor`);
//         setTimeout(resolve, 1000);
//     }))
//     .then(() => new Promise((resolve, reject) => {
//         console.log(`p4 executor`);
//         setTimeout(resolve, 1000);
//     }));

// 将生成期约的代码提取到一个工厂函数中
// 使用的时候只要修改工厂函数的名称与功能代码就可以了
function delayedResolve(str) {
    return new Promise((resolve, reject) => {
        console.log(str);
        setTimeout(resolve, 1000);
    });
}

delayedResolve(`p1 executor`)
    .then(() => delayedResolve(`p2 executor`))
    .then(() => delayedResolve(`p3 executor`))
    .then(() => delayedResolve(`p4 executor`));