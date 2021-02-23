---
geometry: landscape,margin=1cm
papersize: a4
fontsize: 10pt
mainfont: Roboto Condensed
monofont: Fira Mono Bold
header-includes:
- \usepackage{multicol}
- \newcommand{\hideFromPandoc}[1]{#1}
- \hideFromPandoc{
    \let\Begin\begin
    \let\End\end
  }
---
\Begin{multicols}{3}

\Begin{figure}
  \caption{A picture of a tucan.}
  \Begin{center}
  \End{center}
\End{figure}

# Midnight Commander

`Ctrl+\` - directory hotlist  
`Alt+c` - quick cd (doesn't affect command line)  
`Alt+s` - incremental search  
`Alt+.` - toggle hidden files  
`Alt+h` - show history  
`Ctrl+Space` - calculate directory size  
`Alt+t` - cycle panel mode  

`Ctrl+x q` - quick view  
`Ctrl+x d` - compare directories  
`Ctrl+x Ctrl+D` - compare fies  
`Ctrl+x i` - info  
`Ctrl+x Ctrl+s` - edit symlink  
`Ctrl+x t` - copy selected file names to command line  

`Alt+\` - screens  
`Alt+{/}` - prev/next screen  

`Ctrl+f/b` - next/prev file  

## Menu
Left/Right -> Listing format -> Show mini status  

\vfill\null
\columnbreak

# Firefox

`'` - Quick find (links only)  
`/` - Quick find  

`Alt+↑/↓` - prev/next search engine (address bar)  
`Cmd+K` - focus on address bar (put ? there)  

`Ctrl+Tab` - cycle tabs  
`Fn+Ctrl+↑/↓` - prev/next tab  
`Fn+Ctrl+Shift+↑/↓ `- move tab left/right  
`Cmd+1..8` - go to n-th tab  
`Cmd+9` - go to last tab  

`Ctrl+M` - mute/unmute audio  
`Alt/Cmd+Enter` - open in new tab  
`Alt/Cmd+Shift+Enter` - open in new tab (background)  
`Shift+Enter` - open in new window  

`Cmd+Shift+B` - toggle bookmarks toolbar  

`Shift+Del` - delete autocomplete entry  
`F6` or `Cmd+L` - focus address bar (toggle)  

\vfill\null
\columnbreak

# vim

`:W` - sudo write  

`,ie` - edit vimrc  
`,is` - apply (source) vimrc  

`\` - open buffers  
`Ctrl+P` - files in directory  
`Ctrl+\` - command history  
`|` - file history  
`Ctrl+T/X/V` - open in new tab/split/vertical  

`Ctrl+W _` - maximize buffer  
`Ctrl+W o` - maximized buffer (close other)  

`,ci` - toggle comment  
`,c$` - comment until end of line  
`,cA` - add comment at the end of line  

`,d` / `,g` - go to definition, go to function  
`,r` - rename  
`,n` - show uses  

`Ctrl-O` / `Ctrl+I` - prev/next location  
`Ctrl+R <buffer>` - paste (insert mode)  

`,x` - run alefix
`Ctrl+N` - toggle nerd tree

\End{multicols}
