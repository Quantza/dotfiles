dotfiles.git
============
Clone and run this on a VM instance running Ubuntu 12.04.2 LTS or greater, to
configure your `bash` and `emacs` development environment as follows:

```sh
cd $HOME
git clone git@github.com:Quantza/dotfiles.git
ln -sb dotfiles/.screenrc .
ln -sb dotfiles/.tmux.conf .
ln -sb dotfiles/.gitmessage.txt .
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.bashrc_custom .
ln -sf dotfiles/.emacs.d .
ln -sf dotfiles/.tmux .
ln -sf dotfiles/.tools .
ln -sf dotfiles/.vagrant.d .
```

---Modified for my own use---

rlwrap source: http://utopia.knoware.nl/~hlub/uck/rlwrap/
