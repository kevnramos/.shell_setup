cd ~

case `uname` in

  Darwin)
    # mac
    brew install zsh
    ;;

  Linux)
    # linux
    sudo apt install zsh
    ;;


  *)
    echo -n "unknown"
    ;;
esac

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

chsh -s $(which zsh)
