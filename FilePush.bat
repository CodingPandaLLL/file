@echo off
echo "-------Begin-------"
cd pointToPlane
start cmd /C i5ting_toc -f mydocument.md  exit
git pull
git add -A
git commit -m "�ύ�ļ�"
git push origin HEAD:refs/for/master

echo ���ͳɹ�
echo "--------End!--------"
pause