const err = `this is an error`

function tryAndCatch() {
    throw err;
}

try {
    tryAndCatch();
} catch (e) {
    console.log(e); // this is an error
}