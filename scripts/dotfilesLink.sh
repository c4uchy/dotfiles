#!/bin/sh

# i3
if [ -e "/home/$USER/.config/i3" ]; then
  rm ~/.config/i3
fi
ln -sf ~/dotfiles/.config/i3 ~/.config

# feh
if [ ! -e "/home/$USER/.config/feh" ]; then
  mkdir ~/.config/feh
else
  rm ~/.config/feh/keys
fi
ln -sf ~/dotfiles/.config/feh/keys ~/.config/feh

# qutebrower
if [ ! -e "/home/$USER/.config/qutebrowser" ]; then
  mkdir ~/.config/qutebrowser
else
  rm ~/.config/qutebrowser/config.py
fi
ln -sf ~/dotfiles/.config/qutebrowser/config.py ~/.config/qutebrowser

# polybar
if [ ! -e "/home/$USER/.config/polybar" ]; then
  mkdir ~/.config/polybar
else
  rm ~/.config/polybar/config
  rm ~/.config/polybar/launch.sh
  rm ~/.config/polybar/music.sh
  rm ~/.config/polybar/music_on_console
  rm ~/.config/polybar/readmeminfo.py
  rm ~/.config/polybar/batteryLow.sh
fi
ln -sf ~/dotfiles/.config/polybar/config ~/.config/polybar
ln -sf ~/dotfiles/.config/polybar/launch.sh ~/.config/polybar
ln -sf ~/dotfiles/.config/polybar/music.sh ~/.config/polybar
ln -sf ~/dotfiles/.config/polybar/music_on_console ~/.config/polybar
ln -sf ~/dotfiles/.config/polybar/readmeminfo.py ~/.config/polybar
ln -sf ~/dotfiles/.config/polybar/batteryLow.sh ~/.config/polybar

# ranger
if [ ! -e "/home/$USER/.config/ranger" ]; then
  mkdir ~/.config/ranger
else
  rm ~/.config/ranger/rc.conf
  rm ~/.config/ranger/rifle.conf
  rm ~/.config/ranger/scope.sh
fi
ln -sf ~/dotfiles/.config/ranger/rc.conf ~/.config/ranger
ln -sf ~/dotfiles/.config/ranger/rifle.conf ~/.config/ranger
ln -sf ~/dotfiles/.config/ranger/scope.sh ~/.config/ranger

# moc
if [ ! -e "/home/$USER/.moc" ]; then
  mkdir ~/.moc
else
  rm ~/.moc/eqsets
  rm ~/.moc/themes
  rm ~/.moc/config
  rm ~/.moc/keymap
fi
  ln -sf ~/dotfiles/.moc/eqsets ~/.moc
  ln -sf ~/dotfiles/.moc/themes ~/.moc
  ln -sf ~/dotfiles/.moc/config ~/.moc
  ln -sf ~/dotfiles/.moc/keymap ~/.moc

# script
if [ ! -e "/home/$USER/scripts" ]; then
  mkdir ~/scripts
else
  rm ~/scripts/ctlMedia
  rm ~/scripts/keyboard
  rm ~/scripts/keynavClick
  rm ~/scripts/memotool
  rm ~/scripts/monitor
  rm ~/scripts/polybar
  rm ~/scripts/texMarkDown
  rm ~/scripts/camtoggle.sh
  rm ~/scripts/notifyLowBat.sh
  rm ~/scripts/open_memo.sh
  rm ~/scripts/memo_script.py
fi
ln -sf ~/dotfiles/scripts/ctlMedia ~/scripts
ln -sf ~/dotfiles/scripts/keyboard ~/scripts
ln -sf ~/dotfiles/scripts/keynavClick ~/scripts
ln -sf ~/dotfiles/scripts/memotool ~/scripts
ln -sf ~/dotfiles/scripts/monitor ~/scripts
ln -sf ~/dotfiles/scripts/polybar ~/scripts
ln -sf ~/dotfiles/scripts/texMarkDown ~/scripts
ln -sf ~/dotfiles/scripts/camtoggle.sh ~/scripts
ln -sf ~/dotfiles/scripts/notifyLowBat.sh ~/scripts
ln -sf ~/dotfiles/scripts/open_memo.sh ~/scripts
ln -sf ~/dotfiles/scripts/memo_script.py ~/scripts

# home
rm ~/.vimrc
ln -sf ~/dotfiles/.vimrc ~/.vimrc
rm ~/.latexmkrc
ln -sf ~/dotfiles/.latexmkrc ~/.latexmkrc
rm ~/.bashrc
ln -sf ~/dotfiles/.bashrc ~/.bashrc
rm ~/.Xdefaults
ln -sf ~/dotfiles/.Xdefaults ~/.Xdefaults
rm ~/.Xmodmap
ln -sf ~/dotfiles/.Xmodmap ~/.Xmodmap
rm ~/.keynavrc
ln -sf ~/dotfiles/.keynavrc ~/.keynavrc
rm ~/colors
ln -sf ~/dotfiles/colors ~/colors
