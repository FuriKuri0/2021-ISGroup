// 引入Home组件
import 'antd/dist/antd.min.css'
import React from 'react';
import { useRoutes } from 'react-router-dom'
import routes from './routes'
import Head from './component/head';
import axios from 'axios'
const BrowserLogger = require('alife-logger');
const __bl = BrowserLogger.singleton(
  {
    pid:"aggvlepygk@bee807400a543fa",
    appType:"web",
    imgUrl:"https://arms-retcode.aliyuncs.com/r.png?",
    sendResource:true,
    enableLinkTrace:true,
    behavior:true
  });

axios.defaults.withCredentials = true

export default function App() {
    const element = useRoutes(routes)

    
    return (
        <>
            <Head />
            {element}
        </>
    )
}

