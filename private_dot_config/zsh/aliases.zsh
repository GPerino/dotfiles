
# commands
alias install_package='yay -S '
alias up-os='yay -Syyu'
alias sdown='shutdown -h now'
alias search='yay -Ss '
alias list_package='yay -Q '
alias list_installed_package='yay -Q | grep '
alias update='yay -Sy '
alias uninstall='yay -Rns '
alias search_proc='ps -ef | grep'

# Editing config files

alias conf_alacritty='nano ~/.config/alacritty.sh'
alias edit_sshconfig='nano ~/.ssh/config'
alias edit_vhosts='nano /etc/httpd/conf/extra/httpd-vhosts.conf'
alias show_vhosts='sudo cat /etc/httpd/conf/extra/httpd-vhosts.conf'


# Systemctl commands
alias restart_service='systemctl restart'
alias enable_service='systemctl enable'
alias reload_service='systemctl reload'
alias start_service='systemctl start'
alias stop_service='systemctl stop'
alias status_service='systemctl status'

alias exercism='~/bin/exercism'

# Git
alias gcl='git clone'
alias ga='git add'
alias gf='git fetch'
alias gpu='git pull'
alias gp='git push'
alias gs='git status'
alias gc='git commit -m'
alias gch='git checkout'

# Utils
alias lsla='ls -la'
alias lsl='ls -l'
alias grep='grep --color=auto'
alias du='du -h'


#  VPN config
alias import_ovpnconfig='cd /etc/openvpn nmcli connection import type openvpn file'
alias copy_config_fish='sudo cp /home/gab/.config/fish/config.fish /root/.config/fish/config.fish'
