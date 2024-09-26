function King() {
    console.log(this); // King {} 这是一个普通函数 且不是以方法的形式调用 this就指向函数本身
    this.name = 'xiaoming';
    setTimeout(() => {
        console.log(this); // King { name: 'xiaoming' } 这是一个箭头函数 定义在定时器里面 
        // 但上下文据此推测是该函数
        console.log(this.name); // xiaoming
    }, 5000);
}

function Queen() {
    console.log(this); // Queen {}
    this.name = `xiaohong`;
    setTimeout(function() {
        console.log(this); // 这是一个普通函数 调用该函数的是定时器 因此该函数内部的this指向定时器
        // Timeout {
        //     _idleTimeout: 10000,
        //     _idlePrev: null,
        //     _idleNext: null,
        //     _idleStart: 51,
        //     _onTimeout: [Function (anonymous)],
        //     _timerArgs: undefined,
        //     _repeat: null,
        //     _destroyed: false,
        //     [Symbol(refed)]: true,
        //     [Symbol(kHasPrimitive)]: false,
        //     [Symbol(asyncId)]: 9,
        //     [Symbol(triggerId)]: 1
        //   }
        console.log(this.name); // undefined
    }, 10000)
}

// new King();

new Queen();