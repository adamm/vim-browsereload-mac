CURRENT_PATH=$(cd $(dirname $0) && pwd)
cd $CURRENT_PATH/../
git pull
git add ./
git commit -a -m 'update document' 
git push origin gh-pages
echo "push gh-pages -------------------"
cd ../
git pull
git add ./
git commit -a -m 'update document' 
git push origin master
echo "push master  --------------------"

