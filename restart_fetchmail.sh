#!/opt/local/bin/zsh
	
sudo launchctl stop         org.macports.fetchmail
sudo launchctl unload -w    /Library/LaunchDaemons/org.macports.fetchmail.plist
sudo launchctl load   -w    /Library/LaunchDaemons/org.macports.fetchmail.plist
sudo launchctl start        org.macports.fetchmail
	
# vim: set nowrap tabstop=8 shiftwidth=4 softtabstop=4 expandtab :
# vim: set textwidth=0 filetype=zsh foldmethod=marker nospell :
