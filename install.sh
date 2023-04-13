CURRENT_DIR=`pwd`
cd ~

case `uname` in

  Darwin)
    # mac
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
    cd $CURRENT_DIR
    bash setup_mac.sh
    ;;

  Linux)
    # linux
    sudo apt install zsh

    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
    
    cd $CURRENT_DIR
    bash setup_ubuntu.sh
    chsh -s $(which zsh)
    ;;


  *)
    echo -n "unknown"
    ;;
esac


