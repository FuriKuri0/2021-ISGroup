let stringValue = `today is a sunny day,it's good to have a travel`;

let position = new Array();

let pos = stringValue.indexOf(`a`);

while (pos > -1) {
    console.log(pos);
    position.push(pos);
    pos = stringValue.indexOf(`a`, pos + 1);
}

console.log(position); // [ 3, 9, 18, 35, 39, 43 ]