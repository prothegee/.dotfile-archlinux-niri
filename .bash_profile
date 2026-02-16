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

rbashrc () {
	. ~/.bashrc;
}

_calc() {
    squiid;
}

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

_init_gitignore() {
    curl -LO https://gist.githubusercontent.com/prothegee/6e3bece66292e4ed22d00545b6767705/raw/c08e6541b0596eafe5b61fc34bca1f694a9645e1/.gitignore
}
_init_nvimignore() {
    curl -LO https://gist.githubusercontent.com/prothegee/19477d34fee8c2036e7578a760e4736a/raw/ea14c43fa8680060a12bd3680ad5205e5aea8a2a/.nvimignore
}
_init_license_mit() {
    curl -LO https://gist.githubusercontent.com/prothegee/6fc198af080b5ced3c4c9814f357de49/raw/82bc7cf247410444e9d9a85b1983e12c84133739/LICENSE-MIT
}
_init_clangd() {
    curl -LO https://gist.githubusercontent.com/prothegee/dcac29f1bc020b327afe51f79cf253b3/raw/03f649ff4692015e516404e268e6dc86eff851c9/.clangd
}
_init_clang_format() {
    curl -LO https://gist.githubusercontent.com/prothegee/a9526bad6f8786f23f9f80b4746e4ad4/raw/29ab265fd1cdcc89a1e5a8197ca57689257422ca/.clang-format
}
_init_rust_format() {
    curl -LO https://gist.githubusercontent.com/prothegee/99043189d356861356a5e8865bb3baa4/raw/adffa4449b52f562f5566a990adf3815f779a801/.rustfmt.toml
}

# _format_go() {
#     #
# }
# _format_clang() {
#     #
# }
# _format_rust() {
#     #
# }

_pacman-search() {
	sudo pacman -Ssq | grep "^$1";
}
_pacman-unused() {
	sudo pacman -Qqtd;
}
_pacman-unused-remove() {
	sudo pacman -Qqtd | sudo pacman -Rsu -;
}

_yay-search() {
	yay -Ssq | grep "^$1";
}
_yay-unused() {
	yay -Qqtd;
	yay -Qqtd;
}
_yay-unused-remove() {
	yay -Qqtd;
	yay -Qqtd | yay -Rsu -;
}

_used-ports() {
	sudo lsof -i -P -n | grep LISTEN;
}

_eza() {
	if [ -f "/usr/bin/eza" ]; then
		eza --icons $@
	else
		ls $@
	fi
}

alias ls="_eza"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/pr/.lmstudio/bin"
# End of LM Studio CLI section
