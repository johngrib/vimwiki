" vim:tabstop=2:shiftwidth=2:expandtab:textwidth=99

if v:version < 600
  syntax clear
elseif exists('b:current_syntax')
  finish
endif

let b:current_syntax = "vimwiki"

syntax match headers /^##* /
hi def link headers Statement

syntax match quote_code /`[^`]*`/hs=s+1,he=e-1
hi def link quote_code PreProc

syntax match foot_note "\v\[\^[^\] ]*\]"
hi def link foot_note Comment

syntax match markdown_link "\vhttps?://[^ ]*"
hi def link markdown_link Comment

syntax match code_block "```[^ ]*"
hi def link code_block PreProc

syntax match vimwiki_link /\v\[\[[^\]]+\]\]/
hi def link vimwiki_link PreProc

syntax match block_quote /^>/
hi def link block_quote PreProc

syntax match markdown_list /^ *-/
hi def link markdown_list Identifier

