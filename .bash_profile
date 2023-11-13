# .bash_profile
export LANG=ja_JP.UTF-8
export PROMPT_DIRTRIM=2
export PS1="\t \`if [ \$? = 0 ]; then echo \[\e[32m\]; else echo \[\e[31m\]; fi\`[\u@\H \[\e[m\]\w\[\e[0;32m\]]\[\e[m\] \\$ "

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# User specific environment and startup programs


