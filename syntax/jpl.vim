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
syntax region jplComment start="//"  end="$"   contains=jplTodo,@Spell
syntax region jplComment start="/\*" end="\*/" contains=jplTodo,@Spell

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

hi def link jplCommand jplKeyword
hi def link jplStatement jplKeyword
hi def link jplArray jplType

hi def link jplTodo Todo
hi def link jplFunction Function
hi def link jplConditional Conditional
hi def link jplType Type
hi def link jplKeyword Keyword
hi def link jplBoolean Boolean
hi def link jplString String
hi def link jplNumber Number
hi def link jplOperator Operator
hi def link jplComment Comment

