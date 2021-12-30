" You probably always want to set this in your vim file
set background=dark
let g:colors_name="nano"

" By setting our module to nil, we clear lua's cache,
" which means the require ahead will *always* occur.
"
" This isn't strictly required but it can be a useful trick if you are
" incrementally editing your config a lot and want to be sure your themes
" changes are being picked up without restarting neovim.
"
" Note if you're working in on your theme and have :Lushify'd the buffer,
" your changes will be applied with our without the following line.

" The performance impact of this call can be measured in the hundreds of
" *nanoseconds* and such could be considered "production safe".
lua package.loaded['nano'] = nil

" include our theme file and pass it to lush to apply
lua require('lush')(require('nano'))

" Some of the groups seem to have to be defined here for them to work:

" Diagnostics and Spell, to have only the undercurl colored and keep the
" syntax color
hi! DiagnosticUnderlineError ctermfg=NONE ctermbg=NONE gui=undercurl guisp=#BE6069
hi! DiagnosticUnderlineWarn  ctermfg=NONE ctermbg=NONE gui=undercurl guisp=#D18771
hi! DiagnosticUnderlineInfo  ctermfg=NONE ctermbg=NONE gui=undercurl guisp=#81A1C1
hi! DiagnosticUnderlineHint  ctermfg=NONE ctermbg=NONE gui=undercurl guisp=#81A1C1

hi! SpellBad   ctermfg=NONE ctermbg=NONE gui=undercurl guisp=#BE6069 " 11
hi! SpellCap   ctermfg=NONE ctermbg=NONE gui=undercurl guisp=#EBCA89 " 13 
hi! SpellLocal ctermfg=NONE ctermbg=NONE gui=undercurl guisp=#E5E9F0 " 5
hi! SpellRare  ctermfg=NONE ctermbg=NONE gui=undercurl guisp=#ECEFF4 " 6

" CursorLine, to avoid underline on diffs
hi! CursorLine ctermfg=White ctermbg=NONE guifg=NONE guibg=#2f3541 

" StatusLine, because of a strange bug making ^ as fillchar all over the
" status bar... (That’s the only combination that worked)
hi! StatusLine cterm=NONE gui=NONE
hi! StatusLineNC cterm=NONE gui=NONE
hi! link StatusLine None
