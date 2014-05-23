# 简介
使用github来管理vim插件非常适合跨机器使用
在其他机器上面部署的时候只要把代码clone下
来，再加几个链接就可以使用。

# 安装
```
git clone https://github.com/wugh/guohuavim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule init
git submodule update
```

# 升级一个插件（例如fugitive）
```
cd ~/.vim/bundle/fugitive
git pull origin master
```

# 升级所有插件
```
git submodule foreach git pull origin master
```

# 添加一个模块（例如fugitive）
```
cd ~/.vim
mkdir ~/.vim/bundle
git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
git add .
git commit -m "Install Fugitive.vim bundle as a submodule."
git push origin master
```

# 删除一个模块
```
cd ~/.vim
git submodule deinit asubmodule
git rm asubmodule
# Note: asubmodule (no trailing slash)
# or, if you want to leave it in your working tree
git rm --cached asubmodule
```
