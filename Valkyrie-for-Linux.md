We're currently working on a Linux native version of Valkyrie and while it's made good progress its not yet ready to be shared with external users.

In the meantime you can use Valkyrie on Linux using Wine, since Valkyrie is a clean and fairly lean OpenGL application it works quite well this way. We hope that it's at least good enough to get our Linux users started.

The current recommended Wine build:
https://cdn2.talansoft.com/ftp/Installers/Valkyrie-v20201130_015337-ubuntu-winex64.zip

Usage using the terminal, assuming you've downloaded the zip above in your `~/Downloads` folder:
```
# Install wine
sudo apt-get install wine

# Unpack Valkyrie
cd ~/Downloads
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
