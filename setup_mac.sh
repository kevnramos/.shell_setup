rm `find . -name .DS_Store`

cd mac
# delete ".*" files in ~ with same name as files in mac/ folder
for file in .*; do
    cd ~
    rm $file
done

rm -rf p10k_styles/
echo "Removed files and symlinked new ones...\n"

cd ~

cp -s ~/.shell_setup/common/.* .
cp -s ~/.shell_setup/mac/.* .
ln -s ~/.shell_setup/mac/p10k_styles
source ~/.zshrc