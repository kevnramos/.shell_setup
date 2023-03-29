if [ -f .DS_Store ]; then
    rm .DS_Store
fi

cd ~

cp -s ~/.shell_setup/mac/.* .
cp -s ~/.shell_setup/mac/p10k_styles/.* .
