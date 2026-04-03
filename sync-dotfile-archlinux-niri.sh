#!/usr/bin/sh
mkdir -p ~/.dotfile-archlinux-niri;
mkdir -p ~/.dotfile-archlinux-niri/.k8s;
mkdir -p ~/.dotfile-archlinux-niri/.vim;
mkdir -p ~/.dotfile-archlinux-niri/.local/share/applications;


cp -rf ~/.k8s ~/.dotfile-archlinux-niri;


cp -rf ~/sync-dotfile-archlinux-niri.sh ~/.dotfile-archlinux-niri;


cp -rf ~/.vimrc ~/.dotfile-archlinux-niri/.vimrc;
cp -rf ~/.vim/vimrc ~/.dotfile-archlinux-niri/.vim/vimrc;
cp -rf ~/.vim/theme.vim ~/.dotfile-archlinux-niri/.vim/theme.vim;


cp -rf ~/.bashrc ~/.dotfile-archlinux-niri;
cp -rf ~/.bash_profile ~/.dotfile-archlinux-niri;
cp -rf ~/.bash_tools ~/.dotfile-archlinux-niri;


cp -rf ~/.config/user-dirs.dirs ~/.dotfile-archlinux-niri/.config;
cp -rf ~/.config/user-dirs.locale ~/.dotfile-archlinux-niri/.config;
cp -rf ~/.config/kwalletrc ~/.dotfile-archlinux-niri/.config;


cp -rf ~/.config/alacritty ~/.dotfile-archlinux-niri/.config;
cp -rf ~/.config/gtk-3.0 ~/.dotfile-archlinux-niri/.config;
cp -rf ~/.config/mako ~/.dotfile-archlinux-niri/.config;
cp -rf ~/.config/neocmakelsp ~/.dotfile-archlinux-niri/.config;
cp -rf ~/.config/niri ~/.dotfile-archlinux-niri/.config;
cp -rf ~/.config/rofi ~/.dotfile-archlinux-niri/.config;
cp -rf ~/.config/squiid ~/.dotfile-archlinux-niri/.config;
cp -rf ~/.config/systemd ~/.dotfile-archlinux-niri/.config;
cp -rf ~/.config/lm-studio ~/.dotfile-archlinux-niri/.config;
cp -rf ~/.config/superfile ~/.dotfile-archlinux-niri/.config;
cp -rf ~/.config/wallpaper ~/.dotfile-archlinux-niri/.config;
cp -rf ~/.config/waybar ~/.dotfile-archlinux-niri/.config;
cp -rf ~/.config/xdg-desktop-portal ~/.dotfile-archlinux-niri/.config;
cp -rf ~/.config/zed ~/.dotfile-archlinux-niri/.config;


cp -rf ~/.local/share/applications/android-studio.desktop \
    ~/.dotfile-archlinux-niri/.local/share/applications;
cp -rf ~/.local/share/applications/firefox-private.desktop \
    ~/.dotfile-archlinux-niri/.local/share/applications;
cp -rf ~/.local/share/applications/godot.desktop \
    ~/.dotfile-archlinux-niri/.local/share/applications;
cp -rf ~/.local/share/applications/lm-studio.desktop \
    ~/.dotfile-archlinux-niri/.local/share/applications;

