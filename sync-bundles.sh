echo "Checking for Vundle..."
if [ ! -f ~/.vim/bundle/vundle/README.md ];
then
	echo "Vundle not found, installing..."
	mkdir -p ~/.vim/bundle
	git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
else
	echo "Vundle found."
fi

function update_modules {
	echo -e "\t$1..."
	pushd ./bundle/$1
	npm install
	npm update
	popd
}

echo "Removing, updating and installing bundles..."
vim +BundleClean! +BundleInstall! +qall

# echo "Updating NPM modules..."
#update_modules tern_for_vim
#echo "All synced!"

echo "Installing vimrc link"
ln -sf $PWD/vimrc $HOME/.vimrc

cd dotfiles

path="${PWD#$HOME/}"
echo "path $path"
for f in *; do
	echo "Linking file: $f"
	ln -sf $path/$f $HOME/.$f
done

# windows nodejs can't follow symlinks
case `uname` in
    *CYGWIN*) echo "Copy file: jshintrc"; rm $HOME/.jshintrc; cp -f jshintrc $HOME/.jshintrc;;
esac
