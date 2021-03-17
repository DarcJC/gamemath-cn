# /usr/bin/env bash

page_dir="pages";
markdown_ext="md";
out_dir="dist";

if [ ! -d $page_dir ];
then
    echo "${page_dir}文件夹不存在";
    exit 1;
fi


for i in $page_dir/*.$markdown_ext;
do
    if [ -d $i ]; then
        continue;
    fi
    echo "正在转换 ${i} ...";

    filename="${i##*/}";
    filename="${filename%.*}"

    pandoc -f markdown -t html5 --data-dir . --toc --template gamemath $i -o $out_dir/$filename.html

done
