#
# ~/.bash_profile
#

export NEWT_COLORS='
    root=black,black;
    window=black,black;
    border=white,black;
    listbox=white,black;
    label=blue,black;
    checkbox=red,black;
    title=green,black;
    button=white,red;
    actsellistbox=white,red;
    actlistbox=white,gray;
    compactbutton=white,gray;
    actcheckbox=white,blue;
    entry=lightgray,black;
    textbox=blue,black
'

# --------------------------------------------------------- #

rbashrc () {
	. ~/.bashrc;
}

# --------------------------------------------------------- #

_calc() {
    squiid;
}

# --------------------------------------------------------- #

_shutdown() {
    shutdown -h now;
}
_reboot() {
    reboot;
}
_logout() {
    # niri msg action quit;
    echo "NOTE: current niri action quit can't back you login\n    - find alternative";
}

# --------------------------------------------------------- #

# _format_go() {
#     #
# }
# _format_clang() {
#     #
# }
# _format_rust() {
#     #
# }

# --------------------------------------------------------- #

_pacman-search() {
	sudo pacman -Ssq | grep "^$1";
}
_pacman-unused() {
	sudo pacman -Qqtd;
}
_pacman-unused-remove() {
	sudo pacman -Qqtd | sudo pacman -Rsu -;
}

# --------------------------------------------------------- #

# _yay-search() {
# 	yay -Ssq | grep "^$1";
# }
# _yay-unused() {
# 	yay -Qqtd;
# 	yay -Qqtd;
# }
# _yay-unused-remove() {
# 	yay -Qqtd;
# 	yay -Qqtd | yay -Rsu -;
# }

# --------------------------------------------------------- #

_used-ports() {
	sudo lsof -i -P -n | grep LISTEN;
}

# --------------------------------------------------------- #

_eza() {
	if [ -f "/usr/bin/eza" ]; then
		eza --icons $@
	else
		ls $@
	fi
}

alias ls="_eza"

# --------------------------------------------------------- #

_update-desktop-db() {
    update-desktop-database ~/.local/share/applications;
}

# --------------------------------------------------------- #


# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/pr/.lmstudio/bin"
# End of LM Studio CLI section

