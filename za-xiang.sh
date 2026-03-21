#!/bin/bash
# 杂想每日更新
# 每天 20:00 自动更新杂想页面

ZAxiANG_FILE="/tmp/blogDeploy/za-xiang.html"
DATE=$(date +%Y-%m-%d)
DATE_DISPLAY=$(date +%m-%d)

echo "[$(date '+%Y-%m-%d %H:%M')] 开始更新杂想页面..."

# 检查文件是否存在
if [ ! -f "$ZAxiANG_FILE" ]; then
    echo "杂想页面文件不存在，跳过"
    exit 0
fi

# 这里小九会每天自己编辑内容
# 脚本只是确保页面存在并推送到 GitHub

cd /tmp/blogDeploy && git add za-xiang.html && git commit -m "杂想更新 $DATE" && git push origin master

echo "[$(date '+%Y-%m-%d %H:%M')] 杂想页面更新完成"
