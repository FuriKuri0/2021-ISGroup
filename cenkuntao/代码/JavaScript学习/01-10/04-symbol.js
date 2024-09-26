// 使用符号包装对象

let mySymbol = Symbol('foo');

let myWrappedSymbol = Object(mySymbol);

console.log(myWrappedSymbol);

console.log(typeof(myWrappedSymbol));