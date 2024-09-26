// 数据类型检验

let message = 'hello world';

console.log(typeof(message));

console.log(typeof message);

// 布尔转换 不改变原值 生成对应布尔值

let messageBoolean = Boolean(message);

console.log(message);

console.log(typeof(messageBoolean));

// Symbol
let sym = Symbol();

console.log(typeof(sym));

console.log(sym);