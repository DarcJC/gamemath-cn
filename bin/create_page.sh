# /usr/bin/env bash

echo "请输入文件名(示例：000-奇奇怪怪的页面, 无需.md后缀): ";
read filename;

if [ ! -d "pages" ];
then
cp ../template/template.md ../pages/$filename.md
else
cp templates/template.md pages/$filename.md
fi

echo "文件创建完成..."
