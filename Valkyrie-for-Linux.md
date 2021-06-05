# Valkyrie for Linux
We're currently working on a native Linux version of Valkyrie and while it's made good progress its not yet ready to be shared with outside users.

In the meantime you can use Valkyrie on Linux using Wine. While its not the same as a native version we hope that it's enough to get you started on Linux.

The current recommended Wine build:
https://cdn2.talansoft.com/ftp/Installers/Valkyrie-v20201130_015337-ubuntu-winex64.zip

Install using the terminal:
```
# Install wine
sudo apt-get install wine

# Download and unpack Valkyrie
cd ~/Downloads
wget https://cdn2.talansoft.com/ftp/Installers/Valkyrie-v20201130_015337-ubuntu-winex64.zip
unzip Valkyrie-v20201130_015337-ubuntu-winex64.zip

# Go to the newly extracted folder
cd Valkyrie/Vlk

# Start valkyrie (opens the last app project)
./wine_vlk

# Start the valkyrie launcher (to open and create new Vlk app projects)
./wine_vlk_launcher

# Start the valkyrie player
./wine_vlk_player PATH_TO_VPK
```

Note that if its the first time you use Wine or run Vlk the startup might be a bit slow but next time you run the app it should feel about the same as it does on Windows.
