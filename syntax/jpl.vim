" Vim syntax file
" Language: JPL
" Maintainer: Gavin Gray <gavinleroy6 at gmail dot com>

if version < 600
  syntax clear
elseif exists("b:current_syntax") && b:current_syntax != "jpl"
  finish
endif

" reset syntax highlighting for the current buffer.
syn clear

" jpl is case sensitive.
syn case match

" keywords
syn keyword jplTodo        TODO FIXME NOTE
syn keyword jplFunction    fn
syn keyword jplConditional if then else
syn keyword jplType        int bool float float3 float4
syn keyword jplKeyword     array sum 
syn keyword jplStatement   let assert return attribute 
syn keyword jplCommand     read write to print show time
syn keyword jplBoolean     true false

" to go with the array type
syn match jplArray "\v\[,*\]"

" strings: can't escape "
syn region jplString start="\v\"" end="\v\""

" operators
syn match jplOperator "="
syn match jplOperator "=="
syn match jplOperator "!="
syn match jplOperator "&&"
syn match jplOperator "||"
syn match jplOperator "<"
syn match jplOperator ">"
syn match jplOperator "<="
syn match jplOperator ">="
syn match jplOperator "+"
syn match jplOperator "*"
syn match jplOperator "/"
syn match jplOperator "-"
syn match jplOperator "%"
syn match jplOperator "!"

" comments, inline and block
syn region jplComment start="//"  end="$"   contains=jplTodo,@Spell
syn region jplComment start="/\*" end="\*/" contains=jplTodo,@Spell

" numbers, either Int or FLoat
syn match jplNumber "\v<\d+>"
syn match jplFloat  "\v<\d+\.\d*>"
syn match jplFloat  "\v<\d*\.\d+>"

hi def link jplCommand   jplKeyword
hi def link jplStatement jplKeyword
hi def link jplArray     jplType

hi def link jplTodo           Todo
hi def link jplFunction       Function
hi def link jplConditional    Conditional
hi def link jplType           Type
hi def link jplKeyword        Keyword
hi def link jplBoolean        Boolean
hi def link jplString         String
hi def link jplNumber         Number
hi def link jplFloat          Float
hi def link jplOperator       Operator
hi def link jplComment        Comment

