# scripts-CL-prompts
 A collection of my commonly used scripts and command line prompts that help make life a little bit easier

I'll reformat this but wanted to get it out there

Useful Command Line Prompts
***
kill notifs in dock:

defaults delete com.apple.systempreferences AttentionPrefBundleIDs; killall Dock

download entire sites:

wget -r --no-parent http://site.com/songs/

wget -r --no-parent https://www.learnpython.org


Unarchive RAR files using Terminal:
1. Open Terminal from your Utilities folder
2. Use the following command to install a RAR format extractor:
3. brew install unrar
4. If unrar needs to be built from source:
    1. Use this command to install Xcode command line tools:
    2. xcode-select –install
5. Navigate to your .rar file in Terminal and use the following command to extract it:
6. unrar x [file name].rar
The contents extract to the same location as the .rar file on your Mac.



—
reload after unloading processes

launchctl load -w /Library/LaunchAgents/com.adobe.AdobeCreativeCloud.plist

to kill process unload rather than load



kill -9 (PID) to kill bg processes

alias nothankyouadobe="sudo -H killall ACCFinderSync \"Core Sync\" AdobeCRDaemo$


alias nothankyouadobe="sudo -H killall ACCFinderSync \"Core Sync\" AdobeCRDaemon \"Adobe Creative\" AdobeIPCBroker node \"Adobe Desktop Service\" \"Adobe Crash Reporter\";sudo -H rm -rf \"/Library/LaunchAgents/com.adobe.AAM.Updater-1.0.plist\" \"/Library/LaunchAgents/com.adobe.AdobeCreativeCloud.plist\" \"/Library/LaunchDaemons/com.adobe.*.plist\""

alias nothankyouadobe="sudo -H killall ACCFinderSync \"Core Sync\" AdobeCRDaemon \"Adobe Creative\" AdobeIPCBroker node \"Adobe Desktop Service\" \"Adobe Crash Reporter\";sudo -H rm -rf \"/Library/LaunchAgents/com.adobe.AAM.Updater-1.0.plist\" \"/Library/LaunchAgents/com.adobe.AdobeCreativeCloud.plist\" \"/Library/LaunchDaemons/com.adobe.*.plist\""



INVOKING COMMANDS ON LAUNCH:::
Invoked as an interactive login shell, or with --login
When Bash is invoked as an interactive login shell, or as a non-interactive shell with the --login option, it first reads and executes commands from the file /etc/profile, if that file exists. After reading that file, it looks for ~/.bash_profile, ~/.bash_login, and ~/.profile, in that order, and reads and executes commands from the first one that exists and is readable.
[...]
Invoked as an interactive non-login shell
When an interactive shell that is not a login shell is started, Bash reads and executes commands from ~/.bashrc, if that file exists.

***
