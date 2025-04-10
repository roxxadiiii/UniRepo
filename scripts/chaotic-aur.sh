#!/bin/bash

#Intro 

cat << "EOF"

 ██████╗██╗  ██╗ █████╗  ██████╗ ████████╗██╗ ██████╗  █████╗ ██╗   ██╗██████╗ 
██╔════╝██║  ██║██╔══██╗██╔═══██╗╚══██╔══╝██║██╔════╝ ██╔══██╗██║   ██║██╔══██╗
██║     ███████║███████║██║   ██║   ██║   ██║██║█████╗███████║██║   ██║██████╔╝
██║     ██╔══██║██╔══██║██║   ██║   ██║   ██║██║╚════╝██╔══██║██║   ██║██╔══██╗
╚██████╗██║  ██║██║  ██║╚██████╔╝   ██║   ██║╚██████╗ ██║  ██║╚██████╔╝██║  ██║
 ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝    ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝

EOF

sleep 1
# Inporting keyrings

cat << "EOF"

 _  _      ____  ____  ____  _  _      _____   _  __ ________  _ ____  _  _      _____ ____ 
/ \/ \__/|/  __\/  _ \/  __\/ \/ \  /|/  __/  / |/ //  __/\  \///  __\/ \/ \  /|/  __// ___\
| || |\/|||  \/|| / \||  \/|| || |\ ||| |  _  |   / |  \   \  / |  \/|| || |\ ||| |  _|    \
| || |  |||  __/| \_/||    /| || | \||| |_//  |   \ |  /_  / /  |    /| || | \||| |_//\___ |
\_/\_/  \|\_/   \____/\_/\_\\_/\_/  \|\____\  \_|\_\\____\/_/   \_/\_\\_/\_/  \|\____\\____/


EOF

sleep 1

sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB

cat << "EOF"

 _  __ ________  _ ____  _  _      _____ ____ 
/ |/ //  __/\  \///  __\/ \/ \  /|/  __// ___\
|   / |  \   \  / |  \/|| || |\ ||| |  _|    \
|   \ |  /_  / /  |    /| || | \||| |_//\___ |
\_|\_\\____\/_/   \_/\_\\_/\_/  \|\____\\____/
                                              

EOF

sudo pacman -U --noconfirm --needed 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'

cat << "EOF"

 _      _  ____  ____  ____  ____  _     _  ____  _____ 
/ \__/|/ \/  __\/  __\/  _ \/  __\/ \   / \/ ___\/__ __\
| |\/||| ||  \/||  \/|| / \||  \/|| |   | ||    \  / \  
| |  ||| ||    /|    /| \_/||    /| |_/\| |\___ |  | |  
\_/  \|\_/\_/\_\\_/\_\\____/\_/\_\\____/\_/\____/  \_/  
                                                        
EOF

sudo pacman -U --noconfirm --needed 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

cat << "EOF"

 _     ____  ____  ____  _____  _  _      _____   ____  ____  ____  _      ____  _        ____  ____  _      _____
/ \ /\/  __\/  _ \/  _ \/__ __\/ \/ \  /|/  __/  /  __\/  _ \/   _\/ \__/|/  _ \/ \  /|  /   _\/  _ \/ \  /|/    /
| | |||  \/|| | \|| / \|  / \  | || |\ ||| |  _  |  \/|| / \||  /  | |\/||| / \|| |\ ||  |  /  | / \|| |\ |||  __\
| \_/||  __/| |_/|| |-||  | |  | || | \||| |_//  |  __/| |-|||  \_ | |  ||| |-||| | \||__|  \_ | \_/|| | \||| |   
\____/\_/   \____/\_/ \|  \_/  \_/\_/  \|\____\  \_/   \_/ \|\____/\_/  \|\_/ \|\_/  \|\/\____/\____/\_/  \|\_/   
                                                                                                                  

EOF

# Define the configuration to be added
CONFIG_chaotic="[chaotic-aur]\nInclude = /etc/pacman.d/chaotic-mirrorlist\n"

echo "checking if chatic-aur is present in pacman.conf file"

# Check if the configuration already exists in pacman.conf
if ! grep -q "\[chaotic-aur\]" /etc/pacman.conf; then
	# If it doesn't exist, append the configuration to pacman.conf
	echo -e "$CONFIG_chaotic" | sudo tee -a /etc/pacman.conf >/dev/null
	echo "Chaotic-AUR repository has been added to pacman.conf."
else
	echo "Chaotic-AUR repository already exists in pacman.conf."
fi

cat << "EOF"

 _____ _      ____ 
/  __// \  /|/  _ \
|  \  | |\ ||| | \|
|  /_ | | \||| |_/|
\____\\_/  \|\____/

EOF
