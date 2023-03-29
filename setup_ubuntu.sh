if [ `find . -name .DS_Store` ]; then
    rm `find . -name .DS_Store`
fi

function delete(){
    for file in .*; do
        cd ~
        rm $file
    done
}

CURRENT=`pwd`
#####################################################################
cd ubuntu
# go into ubuntu folder, and loop over hidden files
# delete ".*" files in ~ with same name as files in mac/ folder
delete

#####################################################################
cd $CURRENT
cd common
# go into common folder, and loop over hidden files
# delete ".*" files in ~ with same name as files in common/ folder
delete

echo "Removed files and symlinked new ones...\n"

cd ~

cp -s ~/.shell_setup/common/.* .
cp -s ~/.shell_setup/ubuntu/.* .