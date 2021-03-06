" additional and custom syntax for LaTeX documents

" treat \begin{comment}...\end{comment} region as comment
syn region texCommentRegion     start="\\begin{comment}"  end="\\end{comment}\|%stopzone\>"
syn cluster texFoldGroup        add=texCommentRegion
hi! def link texCommentRegion   texComment


" more distinctive colors {{{
" ---------------------------

" texCommentRegion: similar to texComment (ctermfg=35) but slightly different color
hi texCommentRegion ctermfg=108     guifg=#87af5f

" \eq{...}, \ref{...}
hi texRefZone       ctermfg=142     guifg=#afaf00

" math: use different (blue-ish) color than normal text
hi texMath          ctermfg=80      guifg=#5fd7d7

hi link texMathSymbol       texMath
hi link texGreek            texMath
hi link texMathDelim        texMath
hi link texMathOper         texMath

hi link texSuperscript      texMath
hi link texSubscript        texMath

" }}}
