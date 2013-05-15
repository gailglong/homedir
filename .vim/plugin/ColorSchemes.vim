"ColorScheme menu generated Tue 26 Jan 2010 10:24:13 AM MST
"Menu created with ColorSchemeMenuMaker.vim by Erik Falor
"Get the latest version at http://www.vim.org/scripts/script.php?script_id=2004

"Do not load this menu unless running in GUI mode
if !has("gui_running") | finish | endif

"Themes by color:

"submenu black
9000amenu &ColorSchemes.&Colors\ (17).black\ (6).elflord  :colo elflord<CR>
9000amenu &ColorSchemes.&Colors\ (17).black\ (6).koehler  :colo koehler<CR>
9000amenu &ColorSchemes.&Colors\ (17).black\ (6).murphy  :colo murphy<CR>
9000amenu &ColorSchemes.&Colors\ (17).black\ (6).pablo  :colo pablo<CR>
9000amenu &ColorSchemes.&Colors\ (17).black\ (6).ron  :colo ron<CR>
9000amenu &ColorSchemes.&Colors\ (17).black\ (6).*torte  :colo torte<CR>

"submenu blue
9000amenu &ColorSchemes.&Colors\ (17).blue\ (2).blue  :colo blue<CR>
9000amenu &ColorSchemes.&Colors\ (17).blue\ (2).darkblue  :colo darkblue<CR>

"submenu grey
9000amenu &ColorSchemes.&Colors\ (17).grey\ (3).desert  :colo desert<CR>
9000amenu &ColorSchemes.&Colors\ (17).grey\ (3).evening  :colo evening<CR>
9000amenu &ColorSchemes.&Colors\ (17).grey\ (3).slate  :colo slate<CR>

"submenu offwhite
9000amenu &ColorSchemes.&Colors\ (17).offwhite\ (1).morning  :colo morning<CR>

"submenu red
9000amenu &ColorSchemes.&Colors\ (17).red\ (1).peachpuff  :colo peachpuff<CR>

"submenu unknown
9000amenu &ColorSchemes.&Colors\ (17).unknown\ (1).default  :colo default<CR>

"submenu white
9000amenu &ColorSchemes.&Colors\ (17).white\ (3).delek  :colo delek<CR>
9000amenu &ColorSchemes.&Colors\ (17).white\ (3).shine  :colo shine<CR>
9000amenu &ColorSchemes.&Colors\ (17).white\ (3).zellner  :colo zellner<CR>
"Themes by name:


"submenu B
amenu &ColorSchemes.&Names\ (17).B\ (1).blue  :colo blue<CR>

"submenu D
amenu &ColorSchemes.&Names\ (17).D\ (4).darkblue  :colo darkblue<CR>
amenu &ColorSchemes.&Names\ (17).D\ (4).default  :colo default<CR>
amenu &ColorSchemes.&Names\ (17).D\ (4).delek  :colo delek<CR>
amenu &ColorSchemes.&Names\ (17).D\ (4).desert  :colo desert<CR>

"submenu E
amenu &ColorSchemes.&Names\ (17).E\ (2).elflord  :colo elflord<CR>
amenu &ColorSchemes.&Names\ (17).E\ (2).evening  :colo evening<CR>

"submenu K
amenu &ColorSchemes.&Names\ (17).K\ (1).koehler  :colo koehler<CR>

"submenu M
amenu &ColorSchemes.&Names\ (17).M\ (2).morning  :colo morning<CR>
amenu &ColorSchemes.&Names\ (17).M\ (2).murphy  :colo murphy<CR>

"submenu P
amenu &ColorSchemes.&Names\ (17).P\ (2).pablo  :colo pablo<CR>
amenu &ColorSchemes.&Names\ (17).P\ (2).peachpuff  :colo peachpuff<CR>

"submenu R
amenu &ColorSchemes.&Names\ (17).R\ (1).ron  :colo ron<CR>

"submenu S
amenu &ColorSchemes.&Names\ (17).S\ (2).shine  :colo shine<CR>
amenu &ColorSchemes.&Names\ (17).S\ (2).slate  :colo slate<CR>

"submenu T
amenu &ColorSchemes.&Names\ (17).T\ (1).*torte  :colo torte<CR>

"submenu Z
amenu &ColorSchemes.&Names\ (17).Z\ (1).zellner  :colo zellner<CR>

amenu &ColorSchemes.-Sep-   :
amenu &ColorSchemes.Reload\ Menu    :ReloadColorsMenu<CR>
amenu &ColorSchemes.Rebuild\ Menu   :RebuildColorsMenu<CR>

command! -nargs=0       ReloadColorsMenu        call <SID>ReloadColorsMenu()
command! -nargs=0       RebuildColorsMenu       call <SID>RebuildColorsMenu()

if !exists("g:running_ReloadColorsMenu")
    function! <SID>ReloadColorsMenu()
        let g:running_ReloadColorsMenu = 1
        aunmenu &ColorSchemes.&Colors\ (17)
        aunmenu &ColorSchemes.&Names\ (17)
        aunmenu &ColorSchemes.-Sep-
        aunmenu &ColorSchemes.Reload\ Menu
        aunmenu &ColorSchemes.Rebuild\ Menu
        execute 'source /home/gail/.vim/plugin/ColorSchemes.vim'
        unlet g:running_ReloadColorsMenu
        echomsg 'Done reloading /home/gail/.vim/plugin/ColorSchemes.vim'
    endfunction
endif
if !exists("g:running_RebuildColorsMenu")
    function! <SID>RebuildColorsMenu()
        let g:running_RebuildColorsMenu = 1
        call WriteColorSchemeMenu()
        call <SID>ReloadColorsMenu()
        unlet g:running_RebuildColorsMenu
        echomsg 'Done rebuilding /home/gail/.vim/plugin/ColorSchemes.vim'
    endfunction
endif
