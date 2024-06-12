# Ive
(arch)Ive - a simple shell script for easier archive management
## Usage:
Download ive:
```
git clone https://github.com/wfclCamelCase/ive
cd ive
chmod +x ./*
```
```
./ive [COMPRESSION_TYPE (tar, zip or rar)] [ACTION (e for extract, a for archive)] [ARCHIVE_NAME] [FILES (if action is a)]
```
To use the script comfortably you might consider adding it to $PATH by adding the following code to your .bashrc/.bash_profile/.zshrc:
```
export PATH=$PATH:/path/to/ive
```
or using `./install.sh`, which will install ive to your `~/.local/bin`:
```
./install.sh
```
## Examples:
1. Create a zip archive "browser.zip" from the "tor-browser" directory:
```
ive zip a browser.zip tor-browser
```
2. Extract a tar archive "archive.tar"
```
ive tar e archive.tar
```
3. Create a rar archive containing everything from the current directory
```
ive rar a example.rar '*'
```
## Few things to note:
1. The script doesn't handle whitespaces that well, so if the directory you want to archive contatins spaces in its name, it's better to navigate to this directory and pass '*' an an argument:
```
cd 'Space in the name'
ive zip a space.zip '*'
```
2. The "tar" option with "e" action parameter creates a tar.xz archive. If you, for some reason, you are free to modify this script.
## Dependencies:
1. tar - for tar archives
2. zip and unzip - for zip archives
3. rar (sometimes not available in the repositories of your linux distribution) - for rar archives
