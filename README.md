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
