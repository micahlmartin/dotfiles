alias ls='ls -G'                #list with colors
alias lsl='ls -Gl'              #list all and colorize
alias lsf='ls -l | grep -v ^d'  #list files only
alias lsd='ls -l | grep ^d'     #list directories only
alias cp='rsync --progress -ah' # show progress bar when copying

#Some history settings
alias hgrep='history | grep'
export HISTSIZE=10000

#fix for gitk
alias gitk='gitk 2>/dev/null'

#vagrant shortcuts
alias vd='vagrant destroy'
alias vu='vagrant up'
alias vp='vagrant provision'
alias vs='vagrant ssh'
alias vr='vagrant reload'
alias vbm='VBoxManage'

#reload bash profile
alias refresh='source ~/.bash_profile'

#Chef shortcuts
alias myservers='knife ec2 server list | grep micah | grep running'
alias allservers='knife ec2 server list | grep running'
alias nagios_update='knife ssh "role:monitoring" "sudo chef-client"'

#add the current git branch to your prompt
#output: username currentdirectory (gitbranch) $
#source ~/.git-prompt.sh
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  . /usr/local/etc/bash_completion.d/git-completion.bash; 
  PS1='\[\e[0;32m\]\u\[\e[0m\] \[\e[1;34m\]\w\[\e[0m\]\[\e[0;33m\]$(__git_ps1) \[\e[0m\]\n\$ '
fi
