if exists("g:loaded_joy")|finish|end
let g:loaded_joy = 1

fun! s:tab_joy()
  if exists('g:joy_pure')
    imap <tab> <esc>
  else
    if getline('.') =~ '^\s*$'
      call feedkeys("\<tab>", 'n')
      if !exists('g:joy_mixed')
        echo "Implied impure joy in effect. See :h joy"
      endif
    else
      call feedkeys("\<esc>", 'n')
    end
  end
  return ''
endfun
imap <expr> <tab> <sid>tab_joy()
