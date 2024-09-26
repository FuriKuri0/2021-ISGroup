/*
 * @Author: kkt 670335957@qq.com
 * @Date: 2022-07-28 18:28:22
 * @LastEditors: kkt 670335957@qq.com
 * @LastEditTime: 2022-08-06 09:29:38
 * @FilePath: \cenkuntao\代码\book-management\book-management\src\App.jsx
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import React from 'react';
import {useRoutes} from 'react-router-dom'
import routes from './routes'
import 'antd/dist/antd.min.css'
import './App.css'
import Nav from './component/nav'


export default function App() {
    const element=useRoutes(routes)

    return (
    <div>
        <Nav/>
        {element}
    </div>
    )
}