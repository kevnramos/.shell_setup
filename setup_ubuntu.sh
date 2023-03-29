rm `find . -name .DS_Store`

cd ubuntu
# delete ".*" files in ~ with same name as files in mac/ folder
for file in .*; do
    cd ~
    rm $file
done

echo "Removed files and symlinked new ones...\n"

cd ~

cp -s ~/.shell_setup/common/.* .
cp -s ~/.shell_setup/ubuntu/.* .
source ~/.zshrc
