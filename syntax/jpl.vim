" Vim syntax file
" Language: JPL
" Maintainer: Gavin Gray <gavinleroy6 at gmail dot com>

if version < 600
  syntax clear
elseif exists("b:current_syntax") && b:current_syntax != "jpl"
  finish
endif

" reset syntax highlighting for the current buffer.
syntax clear
" jpl is case sensitive.
syntax case match
" keywords
syntax keyword jplTodo TODO FIXME NOTE
syntax keyword jplFunction fn
syntax keyword jplConditional if then else
syntax keyword jplType int bool float float3 float4
syntax keyword jplKeyword array sum 
syntax keyword jplStatement let assert return attribute 
syntax keyword jplCommand read write to print show time
syntax keyword jplBoolean true false
" to go with the array type
syntax match jplArray "\v\[,*\]"
" strings: can't escape "
syntax region jplString start="\v\"" end="\v\""
" comments, inline and block
syntax cluster jplCommentGroup contains=jplTodo
syntax region jplComment start="\/\/" end="$" contains=@jplCommentGroup,@Spell
syntax region jplComment start="\/\*" end="\*\/" contains=@goCommentGroup,@Spell
" numbers, either Int or FLoat
syntax match jplNumber "\v<\d+>"
syntax match jplNumber "\v<\d+\.\d*>"
syntax match jplNumber "\v<\d*\.\d+>"
" operators
syntax match jplOperator "="
syntax match jplOperator "=="
syntax match jplOperator "!="
syntax match jplOperator "&&"
syntax match jplOperator "||"
syntax match jplOperator "<"
syntax match jplOperator ">"
syntax match jplOperator "<="
syntax match jplOperator ">="
syntax match jplOperator "+"
syntax match jplOperator "*"
syntax match jplOperator "/"
syntax match jplOperator "-"
syntax match jplOperator "%"
syntax match jplOperator "!"

highlight link jplCommand jplKeyword
highlight link jplStatement jplKeyword

highlight link jplTodo Todo
highlight link jplFunction Function
highlight link jplConditional Conditional
highlight link jplType Type
highlight link jplArray Type
highlight link jplKeyword Keyword
highlight link jplBoolean Boolean
highlight link jplString String
highlight link jplNumber Number
highlight link jplOperator Operator
highlight link jplComment Comment

