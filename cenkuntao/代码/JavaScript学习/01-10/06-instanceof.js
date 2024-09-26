function C() {;
}

function D() {;
}

let o = new C();

console.log(o instanceof C); // true

console.log(o instanceof D); // false