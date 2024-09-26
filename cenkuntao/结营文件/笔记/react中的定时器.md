1. react中每次状态改变都会导致页面更新，因此定时器得有特殊的配置，不然每次页面更新都会重开一个定时器
1. 每次在页面更新的时候都要销毁之前的定时器，再生成一个新的定时器
1. 并且由于setInterval的缺点（实际执行时间不定，且可能会掉帧）
1. 代码如下：
```jsx
// 设置状态count
const [count,setCount]=useState(10);

// 定时更新数据
useEffect(() => {
  let timerId = null;
  const run = () => {
    console.log("count -> ", count);
    if (count <= 0) {
      return () => {
        timerId && clearTimeout(timerId);
      };
    }
    setCount(count - 1);
    timerId = setTimeout(run, 1000);
    // 这下面为相关的业务代码
    setData(allData.data[count-1]);
  };
  timerId = setTimeout(run, 1000);
  return () => {
    timerId && clearTimeout(timerId);
  };
}, [count]);
```

- 注意：此定时器实际上利用的是回调，层层回调直到count达到阈值，再一步步返回并执行业务逻辑代码
