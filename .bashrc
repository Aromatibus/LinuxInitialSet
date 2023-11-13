# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

export XDG_CONFIG_HOME=~/.config

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias vi='vim'

# ranger settings
# Compatible with ranger 1.5.3 through 1.7.*
# Change the prompt when you open a shell from inside ranger
# Add this line to your .bashrc for it to work.
[ -n "$RANGER_LEVEL" ] && PS1="$PS1"'(in ranger) '
ranger_cd() {
  temp_file="$(mktemp -t "ranger_cd.XXXXXXXXXX")"
  ranger --choosedir="$temp_file" -- "${@:-$PWD}"
  if chosen_dir="$(cat -- "$temp_file")" && [ -n "$chosen_dir" ] && [ "$chosen_dir" != "$PWD" ]; then
    cd -- "$chosen_dir"
  fi
  rm -f -- "$temp_file"
}
# This binds Ctrl-O to ranger_cd:
bind '"\C-o":"ranger_cd\C-m"'
