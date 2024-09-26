// 为避免期约卡在特定状态 可以设置定时退出功能
let p = new Promise((resolve, reject) => {
    setTimeout(reject, 5000);
});

setTimeout(console.log, 0, p);
setTimeout(console.log, 6000, p);