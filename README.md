feedyourbaby
============

 Local Dovecot IMAP Server: Instructions and Configuration


brew install dovecot --with-lucene --with-stemmer
==> Downloading http://dovecot.org/releases/2.2/dovecot-2.2.10.tar.gz
Already downloaded: /Library/Caches/Homebrew/dovecot-2.2.10.tar.gz
==> ./configure --prefix=/usr/local/Cellar/dovecot/2.2.10 --libexecdir=/usr/local/Cellar/dovecot/2.2.10/libexec --sysconfdir=/usr/local/etc --localstatedir=
==> make install
==> Caveats
For Dovecot to work, you will need to do the following:

1) Create configuration in /usr/local/etc

2) If required by the configuration above, create a dovecot user and group

3) possibly create a launchd item in /Library/LaunchDaemons/homebrew.mxcl.dovecot.plist, like so:
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
        <key>Label</key>
        <string>homebrew.mxcl.dovecot</string>
        <key>OnDemand</key>
        <false/>
        <key>ProgramArguments</key>
        <array>
                <string>/usr/local/sbin/dovecot</string>
                <string>-F</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
        <key>ServiceDescription</key>
        <string>Dovecot mail server</string>
</dict>
</plist>

Source: http://wiki.dovecot.org/LaunchdInstall
4) start the server using: sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.dovecot.plist
==> Summary
🍺  /usr/local/Cellar/dovecot/2.2.10: 838 files, 16M, built in 110 seconds
