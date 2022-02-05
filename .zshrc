# stick this in your ~/.zshrc file

# I H8 ADOBE
alias nothankyouadobe="sudo -H killall ACCFinderSync \"Core Sync\" AdobeCRDaemon \"Adobe Creative\" AdobeIPCBroker node \"Adobe Desktop Service\" \"Adobe Crash Reporter\";sudo -H rm -rf \"/Library/LaunchAgents/com.adobe.AAM.Updater-1.0.plist\" \"/Library/LaunchAgents/com.adobe.AdobeCreativeCloud.plist\" \"/Library/LaunchDaemons/com.adobe.*.plist\""

# Bash auto-complete
autoload -U +X bashcompinit && bashcompinit

# Automatically sources your local node version config
source ~/.nvm/nvm.sh

# Python
alias python='python3'
alias pip='pip3'

# Mongo
alias mongologs='cat /usr/local/var/log/mongodb/mongo.log'
alias mongoonrn='brew services list'

# Navigation
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ll='ls -alF'
alias lal='ls -alt'
alias sourcezsh='source ~/.zshrc'
alias openzsh='open ~/.zshrc'

# Browsers
alias safari="open -a safari"
alias chrome="open -a google\ chrome"
# Launch installed browsers for a specific URL
# Usage: browsers "http://www.google.com"
function browsers(){
	chrome $1
	safari $1
}

# Git
alias g='git'
alias gst='git status'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcm='git commit -m'
alias gamend='git commit -a --amend'
alias gdeletemerged='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'

# Other
alias please='sudo'
alias lsd='ls -l | grep "^d"'
alias f='open -a Finder'

# Empty trash
alias emptytrash='sudo rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash'

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop='defaults write com.apple.finder CreateDesktop -bool false && killall Finder'
alias showdesktop='defaults write com.apple.finder CreateDesktop -bool true && killall Finder'

# File size
alias filesize="stat -f \"%z bytes\""

# Show path
alias path='echo -e ${PATH//:/\\n}'

# Copy w/ progress
cp_p () {
  rsync -WavP --human-readable --progress $1 $2
}

# Flush DNS
alias dnsflush='sudo killall -HUP mDNSResponder'

# To clear terminal
alias cc='clear'

# To exit terminal
alias ee='exit'

# This helps edit files that my user isn't the owner of
alias edit='SUDO_EDITOR="open -FWne" sudo -e'

# The alias that takes you here, to edit these aliases
alias edit_profile='open -e ~/.zshrc'

# Web Development - edit these non-owned files
alias edit_hosts='edit /etc/hosts'
alias edit_httpd='edit /etc/apache2/httpd.conf'
alias edit_php='edit /etc/php.ini'
alias edit_vhosts='edit /etc/apache2/extra/httpd-vhosts.conf'

# This alias recursively destroys all .DS_Store files in the folder I am currently in
alias killDS='find . -name *.DS_Store -type f -delete'

# This alias reloads this file
alias reload_profile='. ~/.zshrc'

# Load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Speed up Terminal load time by clearing system logs
alias speedup="sudo rm -rf /private/var/log/asl/*"

# To get my external IP
alias myip='curl icanhazip.com'

# Other IP / Method
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ifconfig en0 inet | grep 'inet ' | awk ' { print $2 } '"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"
