// break
let num = 0;

for (let i = 0; i < 10; i++) {
    for (let j = 0; j < 10; j++) {
        if (i == 5 && j == 5) {
            break;
        }
        num++;
    }
}

console.log(num);

// break+标签
num = 0;

outermost:
    for (let i = 0; i < 10; i++) {
        for (let j = 0; j < 10; j++) {
            if (i == 5 && j == 5) {
                break outermost;
            }
            num++;
        }
    }

console.log(num);

// continue
num = 0;

for (let i = 0; i < 10; i++) {
    for (let j = 0; j < 10; j++) {
        if (i == 5 && j == 5) {
            continue;
        }
        num++;
    }
}

console.log(num);

// continue+标签
num = 0;

outermost2:
    for (let i = 0; i < 10; i++) {
        for (let j = 0; j < 10; j++) {
            if (i == 5 && j == 5) {
                continue outermost2;
            }
            num++;
        }
    }

console.log(num);