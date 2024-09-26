// 非阻塞暂停sleep
async function sleep(delay) {
    return new Promise((resolve) => setTimeout(resolve, delay));
}

async function foo() {
    const t0 = Date.now();
    // 暂停执行1500ms
    await sleep(1500);
    console.log(Date.now() - t0);;
}

foo(); // 1509