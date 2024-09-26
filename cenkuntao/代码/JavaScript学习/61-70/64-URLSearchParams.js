let qs = `?q=javascript&num=10`;

let searchParams = new URLSearchParams(qs);

console.log(searchParams.toString()); // q=javascript&num=10
console.log(searchParams.has(`num`)); // true
console.log(searchParams.get(`num`)); // 10

searchParams.set(`page`, `3`); // q=javascript&num=10&page=3
console.log(searchParams.toString());

searchParams.delete(`q`);
console.log(searchParams.toString()); // num=10&page=3

for (const param of searchParams) {
    console.log(param);
    //     [ 'num', '10' ]
    // [ 'page', '3' ]
}