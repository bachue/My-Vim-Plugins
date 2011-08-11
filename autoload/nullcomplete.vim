function! nullcomplete#Complete(findstart, base)
   if a:findstart
     return -1
   else
     return []
   endif
endfunc
