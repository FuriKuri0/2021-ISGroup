### thymeleaf的导入：在创建springboot项目是勾选上即可



在templates目录下创建html文件，即可

所有html元素元素都可以被thymeleaf替代：使用`th:元素名`



## thymeleaf语法：

### 常用的th属性：

1. `th:text`：设置当前元素的文本内容，类似功能的还有``th:utext``，两者区别在于前者不会转义html标签，后者会
2. `th:value`：设置当前元素的value值，类似修改指定属性的还有`th:src`，`th:href`。
3. `th:each`：遍历循环元素，和**`th:text`**或**`th:value`**一起使用。注意该属性修饰的标签位置
4. **`th:if`**：条件判断，类似的还有**`th:unless`**，**`th:switch`**，**`th:case`**
5. **th:insert**：代码块引入，类似的还有**th:replace**，**th:include**，三者的区别较大，若使用不恰当会破坏html结构，常用于公共代码块提取的场景

### 注意：

1. **`th:each`** 的用法需要格外注意，打个比方：如果你要循环一个div中的p标签，则**`th:each`**属性必须放在p标签上。若你将**`th:each`**属性放在div上，则循环的是将整个div。

   ![](https://raw.githubusercontent.com/JIaaoooo/ImageHostingService/main/img/thymeleaf%E8%AF%AD%E6%B3%95.png)

#### 代码块：

- **`th:insert`**：将代码块片段整个<u>插入</u>到使用了**th:insert**的标签中
- **th:replace**：将代码块片段整个<u>替换</u>使用了**th:replace**的HTML标签中
- **th:include**：将代码块片段包含的内容插入到使用了**th:include**的HTML标签中

案例：

```html
<!--th:fragment定义代码块标识-->
<footer th:fragment="copy">
&copy; 2019 The Good Thymes Virtual Grocery
</footer>

<!--三种不同的引入方式-->
<div th:insert="footer :: copy"></div>
<div th:replace="footer :: copy"></div>
<div th:include="footer :: copy"></div>
```

结果如下：

```html
<!--th:insert是在div中插入代码块，即多了一层div-->
<div>
    <footer>
    &copy; 2019 The Good Thymes Virtual Grocery
    </footer>
</div>
<!--th:replace是将代码块代替当前div，其html结构和之前一致-->
<footer>
&copy; 2019 The Good Thymes Virtual Grocery
</footer>
<!--th:include是将代码块footer的内容插入到div中，即少了一层footer-->
<div>
&copy; 2019 The Good Thymes Virtual Grocery
</div>
```

