CURRENT_PATH=$(cd $(dirname $0) && pwd)
cd $CURRENT_PATH/../
echo "make docs ----------------------------------------------"
make html
cp -pr ./_build/html/* ../
git pull --rebase
git add ./
echo "commit & push gh-pages ---------------------------------"
git commit -a -m 'update document' 
git push origin gh-pages
cd ../
git pull --rebase
git add ./
echo "commit & push master -----------------------------------"
git commit -a -m 'update document' 
git push origin master
echo "finish upload ------------------------------------------"
osascript -e 'tell application "Google Chrome" to reload active tab of window 1'
