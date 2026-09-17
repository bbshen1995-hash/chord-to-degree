#!/bin/bash
# 和弦譜轉級數——發佈到 GitHub Pages
# 雙擊即可執行。網址：https://bbshen1995-hash.github.io/chord-to-degree/

set -e
cd "$HOME/Downloads/chord-to-degree"
if [ -z "$(git status --porcelain)" ]; then
  echo "內容沒有變動，不需發佈。"
else
  git add -A
  git -c user.email=bbshen1995@gmail.com -c user.name="Bernard Shen" \
      commit -q -m "更新 $(date +%Y-%m-%d)"
  git push -q origin main
  echo "已發佈。GitHub Pages 約一分鐘後生效："
  echo "  https://bbshen1995-hash.github.io/chord-to-degree/"
fi

echo
echo "完成。按 Enter 關閉視窗。"
read
