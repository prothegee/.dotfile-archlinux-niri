"set termctermcolors

augroup InternalTheme
    autocmd ColorScheme * highlight Normal ctermbg=none ctermfg=none
    autocmd ColorScheme * highlight NormalNC ctermbg=none ctermfg=none

    autocmd ColorScheme * highlight LineNr ctermbg=none ctermfg=none

    autocmd ColorScheme * highlight NormalFloat ctermbg=none

    autocmd ColorScheme * highlight FloatBorder ctermbg=none ctermfg=lightgreen

    autocmd ColorScheme * highlight WinSeparator ctermbg=none ctermfg=lightgreen
augroup END

colorscheme retrobox
