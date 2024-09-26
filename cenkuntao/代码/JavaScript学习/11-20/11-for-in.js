let o = {
    name: `xiaoming`,
    age: 11,
    height: 180,
    weight: 150,
};

for (const propName in o) {
    console.log(`${propName}`);
}
// name
// age
// height
// weight