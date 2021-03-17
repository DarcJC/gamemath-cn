# GameMath 翻译计划

原文地址：<https://gamemath.com/book/intro.html>

## 翻译说明

本项目使用Markdown进行排版，并使用Pandoc转换为HTML代码。

## 开始翻译

此处只介绍Ubuntu系统下的Pandoc安装方法，其它系统请按照
[此文章](https://pandoc.org/installing.html) 进行操作。

- 安装Pandoc

`$ sudo apt install pandoc`

- 复制templates/template.md到pages/第几章-章节名.md

- 开始你的翻译

- 测试生成页面
  
`$ pandoc -f markdown --data-dir . -t html5 --toc --template gamemath pages/xxx.md > dist/xxx.html`

> 注意,命令默认都是在项目根目录使用。

### 模板格式

我们提供了一些内建的模板以确保其渲染效果接近原文，这里是模板格式。

#### 文章标题

通过传入元数据`title`可以自定义文章标题。

#### 图片引用

就像普通的Markdown图片引用一样

```markdown
![图 1](https://cdn.jsdelivr.net/gh/DarcJC/pictures-host/imgs/20210315232340.png "曾经技术知识通过纸质媒介传递")
```

不过记住你需要在url后提供一个字符串作为说明。

#### 散文引用

在文件开头的元数据中定义，如

```yaml
quotation_value: |
  First things first, but not necessarily in that order.
quotation_from: Meglos 
quotation_time: 1980 
quotation_author: Doctor Who
```

添加前缀`e`代表结尾的散文引用：

```yaml
equotation_value: | 
  Careful. We don't want to learn from this.
equotation_from: Calvin and Hobbes 
equotation_time: 1958
equotation_author: Bill Watterson
```

#### 完成日期

翻译完成日期会在译文信息侧边栏中展示。

只需要简单添加元数据`date`即可。

#### 译文作者

你可以将你的Github用户名添加到元数据author列表中！

```yaml
author:
  - DarcJC
  - arrayJY
```

它会自动将`https://github.com/`拼接到前面。

#### 上一节/下一节

在页面顶部，可以提供上一节/下一节的链接。
这个功能同样使用元数据提供。

```yaml
prev_chap: 奇奇怪怪的章节名 # 上一章章节名
prev_chap_url: https://github.com/ # 上一章url，可以是相对的
next_chap: 神奇海螺
next_chap_url: https://gayhub.com/ # 下一章url
```

注意，如果你提供了章节名，那么你必须要提供一个对应的URL。当不提供章节名时，链接不会显示。

#### 章节数标识

可以通过传入元数据`chap_num`来提供章节数标识。

会显示为“第 {chap_num} 章”。
