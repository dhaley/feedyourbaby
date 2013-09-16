#!/opt/local/bin/zsh

sudo launchctl unload -w /Library/LaunchDaemons/org.macports.dovecot2.plist
sudo launchctl load   -w /Library/LaunchDaemons/org.macports.dovecot2.plist


