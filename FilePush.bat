@echo off
echo "-------Begin-------"
cd pointToPlane
start cmd /C i5ting_toc -f mydocument.md  exit
git pull origin master
git add -A
git commit -m "提交文件"
git push origin master

echo 退送成功
echo "--------End!--------"
pause