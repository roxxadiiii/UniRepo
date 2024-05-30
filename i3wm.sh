sudo pacman -S pulseaudio pavucontrol firefox nemo htop links cmus neofetch scrot ranger neovim mpv unzip polybar fish picom rofi conky ttf-nerd-fonts-symbols feh jq ueberzug w3m imagemagick ghostscript dunst lxappearance nitrogen numlockx ttf-jetbrains-mono-nerd xorg xorg-xinit mesa i3wm alacritty

yay cava picom-ftlabs-git

mkdir -p ~/.config/i3/  
cp /etc/i3/config ~/.config/i3/config 
#git clone https://gitlab.com/prolinux410/owl_dots
#From ~/owl_dots/i3wm/i3_catppuccin/.config copy everything to ~/.config
#In ~/.xinitrc write:
#exec i3 -c ~/.config/i3/themes/i3_catppuccin/config
#Install themes and wallpapers using lxappearance and nitrogen or whatever you prefer. Will reboot. Themes for the software are located in ~/owl_dots/i3wm/i3_catppuccin/soft_themes
