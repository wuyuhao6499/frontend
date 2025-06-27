#!/usr/bin/env bash
echo "脚本名 \$0 -> $0"              # 显示脚本自身的名称
echo "参数个数 \$# -> $#"
echo "第 1 个参数 \$1 -> $1"
echo "第 2 个参数 \$2 -> $2"
echo "第 3 个参数 \$3 -> $3"
echo "第 4 个参数 \$4 -> $4"
echo "第 5 个参数 \$5 -> $5"
echo "第 6 个参数 \$6 -> $6"
echo "第 7 个参数 \$7 -> $7"
echo "第 8 个参数 \$8 -> $8"
echo "第 9 个参数 \$9 -> $9"
echo "第 10 个参数 \${10} -> ${10}"
echo "所有参数 \$* -> $*"          # 合并为单个字符串 :contentReference[oaicite:0]{index=0}
echo "所有参数 \$@ -> $@"         # 每个参数单独输出 :contentReference[oaicite:1]{index=1}
echo "当前进程 PID \$\$ -> $$"    # 当前脚本的进程号 :contentReference[oaicite:2]{index=2}
sleep 1 &                           # 启动后台任务
echo "后台最后进程 PID \$! -> $!" # 最后一个后台进程号 :contentReference[oaicite:3]{index=3}
ls nonexistent_file >/dev/null 2>&1
echo "上一命令退出状态 \$? -> $?" # 上一个命令退出状态（0 表示成功） :contentReference[oaicite:4]{index=4}
exit 0
