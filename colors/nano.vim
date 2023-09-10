" You probably always want to set this in your vim file
" set background=dark

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
lua package.loaded['nano.colors.dark'] = nil
lua package.loaded['nano.colors.light'] = nil
lua package.loaded['nano.base'] = nil
lua package.loaded['nano.palette'] = nil
lua package.loaded['nano.terminal'] = nil
lua package.loaded["nano.plugin.telescope"] = nil
lua package.loaded["nano.plugin.notify"] = nil
lua package.loaded["nano.plugin.conflict-marker"] = nil
lua package.loaded["nano.plugin.gitsigns"] = nil
lua package.loaded["nano.plugin.lsp"] = nil
lua package.loaded["nano.plugin.neogit"] = nil
lua package.loaded["nano.plugin.indent-blankline"] = nil
lua package.loaded["nano.plugin.treesitter"] = nil
lua package.loaded["nano.plugin.netrw"] = nil
lua package.loaded["nano.plugin.feline"] = nil
" lua package.loaded["nano.plugin.navic"] = nil

" include our theme file and pass it to lush to apply
lua require('lush')(require('nano'))

let g:colors_name = "nano"
" Some of the groups seem to have to be defined here for them to work:

function! s:fixes()
		if &background ==# "dark"
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
		else
			" Diagnostics and Spell, to have only the undercurl colored and keep the
			" syntax color
			hi! DiagnosticUnderlineError ctermfg=NONE ctermbg=NONE gui=undercurl guisp=#FF6F00
			hi! DiagnosticUnderlineWarn  ctermfg=NONE ctermbg=NONE gui=undercurl guisp=#FFAB91
			hi! DiagnosticUnderlineInfo  ctermfg=NONE ctermbg=NONE gui=undercurl guisp=#673AB7
			hi! DiagnosticUnderlineHint  ctermfg=NONE ctermbg=NONE gui=undercurl guisp=#673AB7

			hi! SpellBad   ctermfg=NONE ctermbg=NONE gui=undercurl guisp=#FF6F00
			hi! SpellCap   ctermfg=NONE ctermbg=NONE gui=undercurl guisp=#FFAB91
			hi! SpellLocal ctermfg=NONE ctermbg=NONE gui=undercurl guisp=#B0BEC5
			hi! SpellRare  ctermfg=NONE ctermbg=NONE gui=undercurl guisp=#B0BEC5

			" CursorLine, to avoid underline on diffs
			hi! CursorLine ctermfg=White ctermbg=NONE guifg=NONE guibg=#FAFAFA
		endif

		" StatusLine, because of a strange bug making ^ as fillchar all over the
		" status bar... (That’s the only combination that worked)
		hi! StatusLine cterm=NONE gui=NONE
		hi! StatusLineNC cterm=NONE gui=NONE
		hi! link StatusLine None
endfunction

augroup NanoFixes
	autocmd!
	autocmd ColorScheme nano call s:fixes()
augroup END
