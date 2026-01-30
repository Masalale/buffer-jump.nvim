" buffer-jump.nvim - LunarVim-style buffer picker for LazyVim
" Author: Masalale
" License: MIT

if exists('g:loaded_buffer_jump')
  finish
endif
let g:loaded_buffer_jump = 1

command! BufferJump lua require('buffer-jump').jump_to_buffer()
