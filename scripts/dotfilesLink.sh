#!/bin/sh

# config
rm -r ~/.config/i3
ln -sf ~/dotfiles/.config/i3 ~/.config
rm ~/.config/ranger/rc.conf
ln -sf ~/dotfiles/.config/ranger/rc.conf ~/.config/ranger
rm ~/.config/ranger/scope.sh
ln -sf ~/dotfiles/.config/ranger/scope.sh ~/.config/ranger
rm ~/.config/qutebrowser/config.py
ln -sf ~/dotfiles/.config/qutebrowser/config.py ~/.config/qutebrowser
rm ~/.config/polybar/config
ln -sf ~/dotfiles/.config/polybar/config ~/.config/polybar
rm ~/.config/polybar/launch.sh
ln -sf ~/dotfiles/.config/polybar/launch.sh ~/.config/polybar
rm ~/.config/polybar/music.sh
ln -sf ~/dotfiles/.config/polybar/music.sh ~/.config/polybar
rm ~/.config/polybar/music_on_console
ln -sf ~/dotfiles/.config/polybar/music_on_console ~/.config/polybar
rm ~/.config/polybar/readmeminfo.py
ln -sf ~/dotfiles/.config/polybar/readmeminfo.py ~/.config/polybar
rm ~/.config/feh/keys
ln -sf ~/dotfiles/.config/feh/keys ~/.config/feh

# moc
rm ~/.moc/eqsets
ln -sf ~/dotfiles/.moc/eqsets ~/.moc
rm ~/.moc/themes
ln -sf ~/dotfiles/.moc/themes ~/.moc
rm ~/.moc/config
ln -sf ~/dotfiles/.moc/config ~/.moc
rm ~/.moc/keymap
ln -sf ~/dotfiles/.moc/keymap ~/.moc

# home
rm ~/.vimrc
ln -sf ~/dotfiles/.vimrc ~/.vimrc
rm ~/.vrapperrc
ln -sf ~/dotfiles/.vrapperrc ~/.vrapperrc
rm ~/.latexmkrc
ln -sf ~/dotfiles/.latexmkrc ~/.latexmkrc
rm ~/.bashrc
ln -sf ~/dotfiles/.bashrc ~/.bashrc
rm ~/.Xdefaults
ln -sf ~/dotfiles/.Xdefaults ~/.Xdefaults
rm ~/.gruvboxDark.json
ln -sf ~/dotfiles/.gruvboxDark.json ~/.gruvboxDark.json
rm ~/.keynavrc
ln -sf ~/dotfiles/.keynavrc ~/.keynavrc

# scripts
rm ~/scripts/ctlMedia
ln -sf ~/dotfiles/scripts/ctlMedia ~/scripts
rm ~/scripts/keyboard
ln -sf ~/dotfiles/scripts/keyboard ~/scripts
rm ~/scripts/keynavClick
ln -sf ~/dotfiles/scripts/keynavClick ~/scripts
rm ~/scripts/memotool
ln -sf ~/dotfiles/scripts/memotool ~/scripts
rm ~/scripts/monitor
ln -sf ~/dotfiles/scripts/monitor ~/scripts
rm ~/scripts/polybar
ln -sf ~/dotfiles/scripts/polybar ~/scripts
rm ~/scripts/texMarkDown
ln -sf ~/dotfiles/scripts/texMarkDown ~/scripts
rm ~/scripts/camtoggle.sh
ln -sf ~/dotfiles/scripts/camtoggle.sh ~/scripts
rm ~/scripts/notifyLowBat.sh
ln -sf ~/dotfiles/scripts/notifyLowBat.sh ~/scripts
