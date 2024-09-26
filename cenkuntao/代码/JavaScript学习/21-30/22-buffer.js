const buffer = new ArrayBuffer(20);

console.log(buffer);

const DataViewBuffer = new DataView(buffer, 10);

console.log(DataViewBuffer);