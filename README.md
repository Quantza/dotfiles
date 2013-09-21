dotfiles.git
============
Clone and run this on a VM instance running Ubuntu 12.04.2 LTS or greater, to
configure your `bash` and `emacs` development environment as follows:

```sh
cd $HOME
git clone https://github.com/startup-class/dotfiles.git
ln -sb dotfiles/.screenrc .
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.bashrc_custom .
mv .emacs.d .emacs.d~
ln -s dotfiles/.emacs.d .
```

---Modified for my own use---

rlwrap source: http://utopia.knoware.nl/~hlub/uck/rlwrap/

Using GPL License
