let now = new Date(); // Mon Jul 13 1987 20:29:48 GMT+0900 (中国夏令时间)

console.log(Date.now()); // 1657715845530

let t1 = now.getTime(); // 1657715388159

let y1 = now.getFullYear(); // 2022

let y2 = now.getUTCFullYear(); // 2022

let y3 = now.setFullYear(1987); // 553174258602

let y4 = now.getFullYear(); // 1987

console.log(`${now}\n${t1}\n${y1}\n${y2}\n${y3}\n${y4}`);