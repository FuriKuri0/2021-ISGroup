<a name="aYO2J"></a>
## 主题颜色切换
1. antd有提供给我们不同的主题颜色，我们可以通过设置更换主题颜色
1. antd的样式变量如下：
```jsx
@primary-color: #1890ff; // 全局主色
@link-color: #1890ff; // 链接色
@success-color: #52c41a; // 成功色
@warning-color: #faad14; // 警告色
@error-color: #f5222d; // 错误色
@font-size-base: 14px; // 主字号
@heading-color: rgba(0, 0, 0, 0.85); // 标题色
@text-color: rgba(0, 0, 0, 0.65); // 主文本色
@text-color-secondary: rgba(0, 0, 0, 0.45); // 次文本色
@disabled-color: rgba(0, 0, 0, 0.25); // 失效色
@border-radius-base: 2px; // 组件/浮层圆角
@border-color-base: #d9d9d9; // 边框色
@box-shadow-base: 0 3px 6px -4px rgba(0, 0, 0, 0.12), 0 6px 16px 0 rgba(0, 0, 0, 0.08),
  0 9px 28px 8px rgba(0, 0, 0, 0.05); // 浮层阴影
```

3. 引入antd.variable.min.css，替换当前项目引入样式文件为 CSS Variable 版本：
```jsx
-- import 'antd/dist/antd.min.css';
++ import 'antd/dist/antd.variable.min.css';
```

4. 静态方法配置，调用 ConfigProvider 配置方法设置主题色：
```jsx
import { ConfigProvider } from 'antd';

ConfigProvider.config({
  theme: {
    primaryColor: '#25b864',
    linkColor;'#25b864',
  },
});
```
