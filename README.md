#Installation:

git clone https://github.com/wugh/guohuavim.git ~/.vim
##Create links
ln -s ~/.vim/vimrc ~/.vimrc

##Init the submodules
cd ~/.vim
git submodule init
git submodule update

##Upgrading a plugin bundle
cd ~/.vim/bundle/fugitive
git pull origin master

##Upgrading all bundled plugins
git submodule foreach git pull origin master

#添加一个模块（例如fugitive）
cd ~/.vim
mkdir ~/.vim/bundle
git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
git add .
git commit -m "Install Fugitive.vim bundle as a submodule."
git push origin master
