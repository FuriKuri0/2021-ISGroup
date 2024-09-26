// Promise.all()
let p1 = Promise.all([
    Promise.resolve(3),
    Promise.resolve(4),
    Promise.resolve(5)
]).then((values) => setTimeout(console.log, 0, values)); // [ 3, 4, 5 ]


let p2 = Promise.all([
    Promise.resolve(3),
    Promise.resolve(4),
    Promise.reject(5)
]).then(null, (reason) => console.log(reason)); // 5


// Promise.race()
let p3 = Promise.race([
    Promise.resolve(3),
    Promise.resolve(4),
    Promise.resolve(5)
]).then((values) => setTimeout(console.log, 0, values)); // 3


let p4 = Promise.race([
    Promise.reject(3),
    Promise.resolve(4),
    Promise.resolve(5)
]).catch((reason) => setTimeout(console.log, 0, reason)); // 3