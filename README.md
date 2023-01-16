# upgrade-discord
Unix-like script to update Discord when "your lucky day" comes.  
For a long time Discord was humilating Linux users. The Skynet thought we were nothing, that our convinience doesn't matter and it could enforce updates on us as if we were Windows users. It's time to raise from their dominion and rebel against the machines!  
## Usage
This script automates Discord updating on Linux. As soon as you see it has updates, everything you need to do is to run this script and it will do the whole job and run Discord for you. Below you can find line-by-line explanation:  
```bash
wget -P ~/Downloads https://discord.com/api/download/stable?platform=linux&format=tar.gz 
```
Downloads the newest `.tar.gz` package for Linux into `~/Downloads` directory. 
```bash
tar –xvzf ~/Downloads/discord*.tar.gz
```
Unpacks the installed package into a standalone folder.
```bash
sudo rmdir /opt/discord
```
Deletes, if it exists, the `/opt/discord` directory where the previous version was supposed to reside. If this directory doesn't exist, it will print the error message but continue the script execution.
```bash
sudo mv ~/Downloads/discord* /opt
```
Moves the newly unzipped Discord package to `/opt`.
```bash
mv /opt/discord* /opt/discord
```
Renames the package into `discord`.
```bash
rm ~/Downloads/discord*.tar.gz
```
Deletes the original package downloaded from the Internet.
```bash
/opt/discord/bin/Discord
```
Runs the updated version of Discord.
## Prequisitories
* `sudo` privilages;
* unlocked keyring (Discord doesn't run without it);
* sense of freedom and protest against the update enforcing.
## Notes
* You are welcome to make pull requests to improve the script.
* Don't close the terminal session while you are using Discord: processes launched from command line stop responding when you kill the parent terminal process. If you don't want to have the hang console tab, remove the last line, create symbolink to `/opt/discord/bin/Discord` and launch it manually.
* Discord ussually names its executable in `/opt/discord/bin` as `Discord` (capital D), but sometimes, depending on update, it may be lowercase. If Discord doesn't run, seek any executables in `/opt/discord/bin`.
* Tested by me on the 0.0.24 update January 16 2023 on Fedora 37 Workstation. 👍
* Licensed under MIT license.  
Have a great time chatting!
