# Meta Git Updater Docker Edition

## Work in progress, README wasn't changed yet

A small bashscript, that can be used to update clones of git repositories
Usefull as an autoupdater for software cloned from gitlab/github/other public git servers

Setup:
 * Edit meta-git-updater.sh
 * Modify secound and third line (They are self-explaining)
 * chmod 755 meta-git-updater.sh
 * ./meta-git-updater (Initial run, check for errors)

It's making sense, to run it periodically using systemd, crontab or whatever you like
