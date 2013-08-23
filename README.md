#Installation:

git clone https://github.com/wugh/guohuavim.git ~/.vim

#Create links

ln -s ~/.vim/vimrc ~/.vimrc

#Init the submodules
cd ~/.vim
git submodule init
git submodule update

#Upgrading a plugin bundle
cd ~/.vim/bundle/fugitive
git pull origin master

#Upgrading all bundled plugins
git submodule foreach git pull origin master

