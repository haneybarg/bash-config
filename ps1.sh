PROMPT_COMMAND=__prompt_command # Func to gen PS1 after CMDs

__prompt_command() {
  local EXIT="$?" # This needs to be first
  
  local Reset='\[\e[0m\]'
  
  local Red='\[\e[0;91m\]'
  local Gre='\[\e[0;32m\]'
  local Yel='\[\e[0;93m\]'
  local BBlu='\[\e[1;34m\]'
  local Pur='\[\e[0;35m\]'
  
  local Corner1='\342\224\214'
	local Corner2='\342\224\224'
	local Dash='\342\224\200'
	local Bar='\342\224\202'
  
  if [ -n "$PROMPT_INIT" ]; then
    PS1="\n"
  else
    PS1=""
    PROMPT_INIT=yes
  fi
  
  PS1+="${Corner1}${BBlu}[${Reset}"
  
  if [ $EXIT != 0 ]; then
    PS1+="${Red}"
  fi
  
  PS1+="$EXIT${BBlu}]${Reset}${Dash}"
  
  if [ $EXIT -lt 10 ]; then
    PS1+="${Dash}"
  fi
  
  if [ $EXIT -lt 100 ]; then
    PS1+="${Dash}"
  fi
  
  
  PS1+="${BBlu}[${Reset}\u@\h${BBlu}]${Reset}${Dash}${Dash}${Dash}${BBlu}[${Pur}\w${BBlu}]\n${Reset}${Corner2}${Dash}${Reset}>${Reset} "
}
