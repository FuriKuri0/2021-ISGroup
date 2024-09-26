import React from 'react'
import './index.css'
import { NavLink,useNavigate } from 'react-router-dom'
import { List, Space } from 'antd';
import axios from 'axios'

export default function Ranking() {
    const navigate=useNavigate();

    // user_name 存放用户名
    let user_name='';
    
    // 从浏览器获取user_name
    if(localStorage.getItem('bookManagement')==null){
        user_name='';
        navigate('/login')
    }else{
        let bookManagement = JSON.parse(localStorage.getItem('bookManagement'));
        user_name=bookManagement.user_name;
    }

    // message状态存放有后台传输进来的信息
    const [message,setMessage]=React.useState([]);

    // 刚进入页面的时候设置一个tag状态
    const [tag,setTag]=React.useState('评分最高');

    // 转化为数字tag
    const [numTag,setNumTag]=React.useState('point');


    // 展示书籍详情
    function showDetail(m){
        // 第一个参数是切换路径
        // navigate的第二个参数是一个对象 放着切换路由的信息
        navigate('/bookdetail',{
            replace:false,
            // 这个参数应该是传过去了 但是不知道在哪里可以获取
            state:{
                id:m.index,
            }
        })
    }
    const todetail=(m)=>{
    navigate('/bookdetail',{
        state:{
            book:m
        }
    })
    }
    // tag属状态改变 标签底色改变 
    // 发送请求 获取数据 message状态改变 渲染页面
    // 分页状况改变 改变页面 改变分页器
    React.useEffect(()=>{
        // 被选中的标签变换底色
        const tags=document.querySelectorAll(`.Ranking-nav>li`);
        for(const i of tags){
            i.style.backgroundColor='#d9d9d9'
            i.style.color='black'
            if(i.innerHTML===tag){
                i.style.backgroundColor='#773D31'
                i.style.color='white'
            }     
        }
        // 向远程服务器发送请求
        // axios({
        //     method: 'GET',
        //     url: `https://5v686c5039.goho.co/user=${user_name}/sort=${numTag}`,
        //   }).then(
        //     response => {
        //         console.log(response);
        //     },
        //     error => {
        //       console.log(error);
        //     }
        //   )
        //   axios.post('http://localhost:8000/ranking',JSON.stringify({
        //     tag:tag,
        //   }))
        // 发送请求
        axios({
            method: 'GET',
            url: `https://5v686c5039.goho.co/user=${user_name}/sort=${numTag}`,
          })
          .then(
            (response)=>{
                console.log(response);
                // console.log(message);
                //将请求回来的data替换为arr usestate\
                const data = response.data.map((m,i) => {
                    return ({
                        title: <div onClick={()=>todetail(m)}><div className='Ranking-Rank'>NO.{i+1}</div>{m.title}<div className='Ranking-author'>{m.author} 著</div>
                            <strong className='Ranking-label'>标签：</strong><div className='Ranking-tag'>{m.tag}</div>
                        </div>,
                        content:
                            <div>
                                <div onClick={()=>todetail(m)} className='Ranking-text'>
                                    <div onClick={()=>todetail(m)} className='Ranking-jianjie'>简介</div>
                                    {m.bookInfo}
                                </div>
                                <div Ranking-right>
                                    <div onClick={()=>todetail(m)} className='Ranking-line'></div>
                                    <div onClick={()=>todetail(m)} className='Ranking-score'>{m.point}</div>
                                    <div onClick={()=>todetail(m)} className='Ranking-scorepople'>共 <i style={{ color: 'brown' }}>{m.pointCount}</i> 人点评</div>
                                    <ul onClick={()=>todetail(m)} className='Ranking-imf'>
                                        <li>浏览量 <strong>{m.readingCount}</strong> 次</li>
                                        <li>点赞数 <strong>{m.goodCount}</strong> 次</li>
                                        <li>收藏数 <strong>{m.starCount}</strong> 次</li>
                                    </ul>
                                </div>
                                
                            </div>,
                        extra:<img
                            alt="logo"
                            src={m.cover}
                        />
                    })
                })
                console.log(data,'aaaaaa');
                setMessage(data)      
                },
            (error)=>{
                console.log(error);
              })
        },[tag])

    // 处理标签点击
    function handleClick(Event){
        // t承载标签
        let t=Event.target.innerHTML;
        // 设置tag状态
        setTag(t);
        // 在这里将文字tag转化为数字tag numT承载数字tag
        let numT=t=='评分最高'?'point':t=='阅读人数'?"readingCount":t=='收藏人数'?"starCount":t=='点赞数量'?"goodCount":t=='杂志情感'?5:t=='科幻玄幻'?6:t=='成长教育'?7:t=='财经军事'?8:t=='名著传统'?9:0
        // console.log(numT);
        setNumTag(numT);
    }

  

    const IconText = ({ icon, text }) => (
        <Space>
            {React.createElement(icon)}
            {text}
        </Space>
    );

    return (
        <div className='Ranking'>
            {/* 顶部导航 */}
            <ul className='Ranking-nav'>
                <li onClick={(Event)=>handleClick(Event)}>评分最高</li>
                <li onClick={(Event)=>handleClick(Event)}>阅读人数</li>
                <li onClick={(Event)=>handleClick(Event)}>收藏人数</li>
                <li onClick={(Event)=>handleClick(Event)}>点赞数量</li>
            </ul>
            {/*  */}
            <List
                grid={{
                    // gutter: 506,
                    column: 1,
                }}
                className='Ranking-list'
                // itemLayout="vertical"
                size=""
                pagination={{
                    onChange: (page) => {
                        console.log(page);
                    },
                    pageSize: 10,
                }}
                dataSource={message}
                renderItem={(item) => (
                    <List.Item
                        key={item.title}
                        actions={[
                            // <IconText icon={StarOutlined} text="156" key="list-vertical-star-o" />,
                            // <IconText icon={LikeOutlined} text="156" key="list-vertical-like-o" />,
                            // <IconText icon={MessageOutlined} text="2" key="list-vertical-message" />,
                        ]}
                        extra={item.extra
                            // <img
                            //     alt="logo"
                            //     src="https://img2.baidu.com/it/u=2909583348,799512575&fm=253&fmt=auto&app=138&f=JPEG?w=354&h=500"
                            // />
                        }
                    >
                        <List.Item.Meta
                            title={item.title}
                        />
                        {item.content}
                    </List.Item>
                )}
            />
        </div>

    )
}
