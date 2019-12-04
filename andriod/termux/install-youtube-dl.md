In termux:
```
apt update && apt upgrade
```
Give termux access to your phone's filesystem via ~/storage/shared
```
termux-setup-storage
```
Install python:
```
pkg install python
```
Install youtube-dl
```
pip install youtube-dl
```
Create a folder to store your downloaded videos:
```
mkdir /data/data/com.termux/files/home/storage/shared/Youtube
```
Create youtube-dl config (volume-down key emulates Ctrl in termux):
```
mkdir -p ~/.config/youtube-dl && vi ~/.config/youtube-dl/config
```
The contents of my config is as follows:
```
--no-mtime
-o /data/data/com.termux/files/home/storage/shared/Youtube/%(title)s.%(ext)s
-f "best[height<=720]"
#(the height<=720 tells youtube-dl to download the best quality version up to 720px in width. You can change to 240, 360, 720 or 1080, etc to suit your needs / bandwidth restrictions.
```
Save with "Volume-down" + O, then close nano with "Vol-down" + X

Create "termux-url-opener" in ~/bin to enable one-click download via the "Share" menu in the youtube app:
```
mkdir ~/bin && cd ~/bin && vi termux-url-opener
```
In that file, place:
```
youtube-dl $1
```
