
function delete(){
    for file in .*; do
        cd ~
        rm $file
    done
}

CURRENT=`pwd`
#####################################################################
cd mac
# go into mac folder, and loop over hidden files
# delete ".*" files in ~ with same name as files in mac/ folder
delete

# delete p10k_styles folder from ~
rm -rf p10k_styles

#####################################################################
cd $CURRENT
cd common
# go into common folder, and loop over hidden files
# delete ".*" files in ~ with same name as files in common/ folder
delete

echo "Removed files and symlinked new ones..."

cd ~

cp -s ~/.shell_setup/common/.* .
cp -s ~/.shell_setup/mac/.* .
ln -s ~/.shell_setup/mac/p10k_styles