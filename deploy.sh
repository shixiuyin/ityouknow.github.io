WEB_PATH='/usr/local/shixiuyin.github.io/'
 
echo "start deployment shixiuyin bolg"
cd $WEB_PATH
echo "fetching from remote..."
# 为了避免冲突，强制更新本地文件
git fetch --all
git reset --hard origin/master

git pull git@github.com:shixiuyin/shixiuyin.github.io.git
jekyll build --destination=/usr/local/nginx/html/

echo "done jekyll shixiuyin bolg push ok"
