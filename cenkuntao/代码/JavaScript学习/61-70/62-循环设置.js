let num = 0;
let max = 10;
let incrementNumber = function() {
    num++;

    // 如果还没有达到最大值，再设置一个超时任务
    if (num < max) {
        // 但是吧 这里也是有缺陷的 
        // 里面的代码就得根据外面的数据来进行 挺不方便的
        // 可以进行优化
        setTimeout(incrementNumber, 500);
    } else {
        console.log(`Done`);
    }
}

setTimeout(incrementNumber, 500);