### Dotfiles


```sh
# Edit colors in ./local/share/nvim/plugged/vim-gotham/colors/ghotham256.vim

let s:colors.white     = { 'gui': '#f0f2cc', 'cterm': 230 }
let s:colors.red2      = { 'gui': '#AA0505', 'cterm': 124 }
let s:colors.blood     = { 'gui': '#6A0C0B', 'cterm': 124 }
let s:colors.gold      = { 'gui': '#FBCA03', 'cterm': 166 }
let s:colors.gold2     = { 'gui': '#ff9f1b', 'cterm': 166 }
let s:colors.yellow2   = { 'gui': '#B97D10', 'cterm': 214 }

call s:Col('CursorLineNr', 'white', s:linenr_background)
call s:Col('String', 'gold2')
call s:Col('Identifier', 'red2')
call s:Col('Title', 'white')

call s:Col('pythonStatement', 'gold2')

```
