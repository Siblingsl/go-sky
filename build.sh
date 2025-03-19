#!/bin/bash
# 1. 删除旧的编译文件
rm -rf build
mkdir -p build

# 2. 编译 Golang 程序，并将编译结果输出到 build/sky 目录
go build -trimpath -o build/sky .

echo "打包完成"

# 打印当前工作目录以确认
pwd

# 3. 运行编译后的可执行文件
./build/sky
