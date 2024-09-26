console.log(1);

setTimeout(function() {
        console.log(2);
    }, 0) // 1. 定时器 得加入信息队列 异步

new Promise(function(resolve, reject) {
    console.log(3) // 2. 这是同步的打印 先打印3
    resolve(); // 3. 手动解决事件 在事件结果之后的代码不会执行
    setTimeout(function() {
        console.log(4); // 4. 在期约解决后并不会立刻跳入下一阶段 这里的定时器还是要执行的
    }, 0);
}).then(res => {
    // 5. 这个是同步打印？ 期约拒绝之后是异步执行
    // 但是期约解决之后还是同步执行？？
    // 如果是同步执行那5应该在6前面 这个是不一样的异步执行？
    console.log(5);
})

// 6. 同步的打印 打印6 该线程的同步操作结束 进行异步代码信息处理
// 2排在5的前面 先打印2 再打印5
console.log(6);
// 1 3 6 2 5

// 1
// 3
// 6
// 5 
// 2
// 4