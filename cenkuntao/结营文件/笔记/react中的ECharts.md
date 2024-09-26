1. echarts-for-react 不是官方封装的，但是用起来也很顺手
1. 安装依赖包：
```jsx
npm install echarts --save
npm install --save echarts-for-react

```

- echarts是原生的，echarts-for-react是基于react
3. 在认识了基本的模板之后，只要把官网option对应的部分抄一抄就可以运行了
```jsx
import React,{ useEffect,useState } from 'react'
import EChartsReact from 'echarts-for-react'

export default function LesMiserable() {

    // 数据配置
    const getOption=()=>{
        // console.log(links);
        const option = {
          // 这中间就是官网上面对应的option的内容
          // ...
        }；
        return option;
    }

  return (
        <EChartsReact option={getOption()} style={{height:'400px'}}/>
  )
}
```

4. 要注意的一点是：
   1. 当需要实现实时渲染数据的时候（就是需要获取一次的数据要分批进行渲染好多遍），echarts默认是会对新的数据节点进行合并的
   1. 说是这么说的，但实际上我在做实时渲染的时候是报错了，报错内容是设置数据无效
   1. 因此我们需要将将<EChartsReact>组件的notMerge属性设置为true
5. 合并规则：ECharts根据notMerge和replaceMerge进行合并，合并方式分两种：普通合并与替换合并，替换合并可能会删除数据，但是普通合并不会，普通合并只会更新数据会增加数据
5. 具体案例：
```jsx
import React,{ useEffect,useState } from 'react'
import { Card } from 'antd'
import EChartsReact from 'echarts-for-react'
import { axiosJSONPost } from '../../utils/request'

export default function LesMiserable() {

  const [count,setCount]=useState(1);
  const [data,setData]=useState([]);
  const [allData,setAllData]=useState({
    data:null,
    links:[],
  });

    // 请求数据
    useEffect(()=>{
        axiosJSONPost('http://localhost:8000/graph',{msg:'复杂关系图来了'})
        .then(
            response=>{
              setAllData(response.data.data);
              setCount(response.data.data.data.length-1);
            },
            error=>{
                console.log(error);
            }
        )
    },[])

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

    // 数据配置
    const getOption=()=>{
        // console.log(links);
        const option = {
            title: {
              text: '复杂关系图',
            },
            // 数据更新动画的时长 只要有返回值就好 因此可以是一个函数
            animationDurationUpdate: 1500,
            // 数据更新动画的缓动效果 quinticInOut???
            animationEasingUpdate: 'quinticInOut',
            tooltip: {},
            series: [
              {
                name: '复杂关系图',
                // 类型 graph关系图
                type: 'graph',
                // 布局 none无 circular环形布局 force力引导布局
                layout: 'none',
                symbolSize: 50,
                // 开启缩放和平移
                roam: true,
                // 是否显示标签
                label: {
                  show: true
                },
                // 边两端标记类型 此处设置为一端圆点一端箭头
                edgeSymbol: ['circle', 'arrow'],
                // 边两端标记大小
                edgeSymbolSize: [4, 10],
                // 图形上的文本标签
                edgeLabel: {
                    // 字体大小
                  fontSize: 20,
                },
                // 动态载入节点 关系 类目名称
                data: data,
                links: allData.links,
                // categories: categories,
                // 点关系样式
                lineStyle: {
                  opacity: 0.9,
                  width: 2,
                  // 边的曲度 0~1
                  curveness: 0,
                },
              }
            ]       
          };
        return option;
    }

  return (
    <Card title='关系图'>
        {/* notMerge 参数 更新数据时不合并 必须设置此参数才可以实时更新数据 */}
        <EChartsReact option={getOption()} style={{height:'400px'}} notMerge={true}/>
    </Card>
  )
}

```

- 具体数据参考官网即可
