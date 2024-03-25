#!/bin/bash

#INSTALLING PACKAGES
#
cat <<"EOF"

  ░▀█▀░▒█▄░▒█░▒█▀▀▀█░▀▀█▀▀░█▀▀▄░▒█░░░░▒█░░░░▀█▀░▒█▄░▒█░▒█▀▀█░░
  ░▒█░░▒█▒█▒█░░▀▀▀▄▄░░▒█░░▒█▄▄█░▒█░░░░▒█░░░░▒█░░▒█▒█▒█░▒█░▄▄░░
  ░▄█▄░▒█░░▀█░▒█▄▄▄█░░▒█░░▒█░▒█░▒█▄▄█░▒█▄▄█░▄█▄░▒█░░▀█░▒█▄▄▀░░

  ░▒█░▄▀░▒█▀▀▀░▒█░░▒█░▒█▀▀▄░▀█▀░▒█▄░▒█░▒█▀▀█░▒█▀▀▀█
  ░▒█▀▄░░▒█▀▀▀░▒▀▄▄▄▀░▒█▄▄▀░▒█░░▒█▒█▒█░▒█░▄▄░░▀▀▀▄▄
  ░▒█░▒█░▒█▄▄▄░░░▒█░░░▒█░▒█░▄█▄░▒█░░▀█░▒█▄▄▀░▒█▄▄▄█

  ░█▀▀▄░▒█▄░▒█░▒█▀▀▄░░
  ▒█▄▄█░▒█▒█▒█░▒█░▒█░░
  ▒█░▒█░▒█░░▀█░▒█▄▄█░░

  ░▒█▀▀█░█▀▀▄░▒█▀▀▄░▒█░▄▀░█▀▀▄░▒█▀▀█░▒█▀▀▀░▒█▀▀▀█
  ░▒█▄▄█▒█▄▄█░▒█░░░░▒█▀▄░▒█▄▄█░▒█░▄▄░▒█▀▀▀░░▀▀▀▄▄
  ░▒█░░░▒█░▒█░▒█▄▄▀░▒█░▒█▒█░▒█░▒█▄▄▀░▒█▄▄▄░▒█▄▄▄█


EOF

sudo pacman -U --noconfirm --needed \
	rebornos-keyring-20231128-1-any.pkg.tar.zst \
	rebornos-mirrorlist-20240215-1-any.pkg.tar.zst \
	chaotic-keyring-20230616-1-any.pkg.tar.zst \
	chaotic-mirrorlist-20240130-1-any.pkg.tar.zst \
	endeavouros-keyring-20231222-1-any.pkg.tar.zst \
	endeavouros-mirrorlist-24.2-1-any.pkg.tar.zst \
	archcraft-mirrorlist-2.0-2-any.pkg.tar.zst \
	arcolinux-keyring-20251209-3-any.pkg.tar.zst \
	arcolinux-mirrorlist-git-24.03-12-any.pkg.tar.zst

echo "Installation complete."

echo
echo

cat <<"EOF"

░▒█▀▀▄░▒█░▒█░█▀▀▄░▒█▀▀▀█░▀▀█▀▀░▀█▀░▒█▀▀▄░░░░█▀▀▄░▒█░▒█░▒█▀▀▄
░▒█░░░░▒█▀▀█▒█▄▄█░▒█░░▒█░░▒█░░░▒█░░▒█░░░░▀▀▒█▄▄█░▒█░▒█░▒█▄▄▀
░▒█▄▄▀░▒█░▒█▒█░▒█░▒█▄▄▄█░░▒█░░░▄█▄░▒█▄▄▀░░░▒█░▒█░░▀▄▄▀░▒█░▒█


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

echo
echo

cat <<"EOF"

░▒█▀▀▀░▒█▄░▒█░▒█▀▀▄░▒█▀▀▀░█▀▀▄░▒█░░▒█░▒█▀▀▀█░▒█░▒█░▒█▀▀▄░░░▒█▀▀▀█░▒█▀▀▀█░░░▒█▀▀▄░▒█▀▀▀░▒█▀▀█░▒█▀▀▀█
░▒█▀▀▀░▒█▒█▒█░▒█░▒█░▒█▀▀▀▒█▄▄█░░▒█▒█░░▒█░░▒█░▒█░▒█░▒█▄▄▀░░░▒█░░▒█░░▀▀▀▄▄░░░▒█▄▄▀░▒█▀▀▀░▒█▄▄█░▒█░░▒█
░▒█▄▄▄░▒█░░▀█░▒█▄▄█░▒█▄▄▄▒█░▒█░░░▀▄▀░░▒█▄▄▄█░░▀▄▄▀░▒█░▒█░░░▒█▄▄▄█░▒█▄▄▄█░░░▒█░▒█░▒█▄▄▄░▒█░░░░▒█▄▄▄█


EOF

# Define the configuration to be added
CONFIG_eos="[endeavouros]\nSigLevel = PackageRequired\nInclude = /etc/pacman.d/endeavouros-mirrorlist\n"

# Check if the configuration already exists in pacman.conf
if ! grep -q "\[endeavouros\]" /etc/pacman.conf; then
	# If it doesn't exist, append the configuration to pacman.conf
	echo -e "$CONFIG_eos" | sudo tee -a /etc/pacman.conf >/dev/null
	echo "EndeavourOS repository has been added to pacman.conf."
else
	echo "EndeavourOS repository already exists in pacman.conf."
fi

echo
echo

Cat <<"EOF"

░▒█▀▀▄░▒█▀▀▀░▒█▀▀▄░▒█▀▀▀█░▒█▀▀▄░▒█▄░▒█░░░▒█▀▀▀█░▒█▀▀▀█░░░▒█▀▀▄░▒█▀▀▀░▒█▀▀█░▒█▀▀▀█
░▒█▄▄▀░▒█▀▀▀░▒█▀▀▄░▒█░░▒█░▒█▄▄▀░▒█▒█▒█░░░▒█░░▒█░░▀▀▀▄▄░░░▒█▄▄▀░▒█▀▀▀░▒█▄▄█░▒█░░▒█
░▒█░▒█░▒█▄▄▄░▒█▄▄█░▒█▄▄▄█░▒█░▒█░▒█░░▀█░░░▒█▄▄▄█░▒█▄▄▄█░░░▒█░▒█░▒█▄▄▄░▒█░░░░▒█▄▄▄█


EOF

# Define the configuration to be added
CONFIG_ros="[Reborn-OS]\nInclude = /etc/pacman.d/reborn-mirrorlist\n"

# Check if the configuration already exists in pacman.conf
if ! grep -q "\[Reborn-OS\]" /etc/pacman.conf; then
	# If it doesn't exist, append the configuration to pacman.conf
	echo -e "$CONFIG_ros" | sudo tee -a /etc/pacman.conf >/dev/null
	echo "Reborn-OS repository has been added to pacman.conf."
else
	echo "Reborn-OS repository already exists in pacman.conf."
fi

echo
echo

cat <<"EOF"

░▒█▀▀█░█▀▀▄░▒█▀▀▄░▒█░▒█░▒█▀▀▄░█▀▀▄░░░▒█▀▀▄░▒█▀▀▀░▒█▀▀█░▒█▀▀▀█
░▒█░▄▄▒█▄▄█░▒█▄▄▀░▒█░▒█░▒█░▒█▒█▄▄█░░░▒█▄▄▀░▒█▀▀▀░▒█▄▄█░▒█░░▒█
░▒█▄▄▀▒█░▒█░▒█░▒█░░▀▄▄▀░▒█▄▄█▒█░▒█░░░▒█░▒█░▒█▄▄▄░▒█░░░░▒█▄▄▄█


EOF

# Define the configuration to be added
CONFIG_garuda="[garuda]\nSigLevel = Required DatabaseOptional\nInclude = /etc/pacman.d/chaotic-mirrorlist\n"

# Check if the configuration already exists in pacman.conf
if ! grep -q "\[garuda\]" /etc/pacman.conf; then
	# If it doesn't exist, append the configuration to pacman.conf
	echo -e "$CONFIG_garuda" | sudo tee -a /etc/pacman.conf >/dev/null
	echo "Garuda repository has been added to pacman.conf."
else
	echo "Garuda repository already exists in pacman.conf."
fi

echo
echo

cat <<"EOF"

░█▀▀▄░▒█▀▀▄░▒█▀▀▄░▒█░▒█░▒█▀▀▄░▒█▀▀▄░█▀▀▄░▒█▀▀▀░▀▀█▀▀░░░▒█▀▀▄░▒█▀▀▀░▒█▀▀█░▒█▀▀▀█
▒█▄▄█░▒█▄▄▀░▒█░░░░▒█▀▀█░▒█░░░░▒█▄▄▀▒█▄▄█░▒█▀▀░░░▒█░░░░░▒█▄▄▀░▒█▀▀▀░▒█▄▄█░▒█░░▒█
▒█░▒█░▒█░▒█░▒█▄▄▀░▒█░▒█░▒█▄▄▀░▒█░▒█▒█░▒█░▒█░░░░░▒█░░░░░▒█░▒█░▒█▄▄▄░▒█░░░░▒█▄▄▄█


EOF

# Define the configuration to be added
CONFIG_archcraft="[archcraft]\nSigLevel = Optional TrustAll\nInclude = /etc/pacman.d/archcraft-mirrorlist\n"

# Check if the configuration already exists in pacman.conf
if ! grep -q "\[archcraft\]" /etc/pacman.conf; then
	# If it doesn't exist, append the configuration to pacman.conf
	echo -e "$CONFIG_archcraft" | sudo tee -a /etc/pacman.conf >/dev/null
	echo "Archcraft repository has been added to pacman.conf."
else
	echo "Archcraft repository already exists in pacman.conf."
fi

echo
echo
echo

cat <<"EOF"

░█▀▀▄░▒█▀▀▄░▒█▀▀▄░▒█▀▀▀█░▒█░░░░▀█▀░▒█▄░▒█░▒█░▒█░▀▄░▄▀░░░▒█▀▀▄░▒█▀▀▀░▒█▀▀█░▒█▀▀▀█
▒█▄▄█░▒█▄▄▀░▒█░░░░▒█░░▒█░▒█░░░░▒█░░▒█▒█▒█░▒█░▒█░░▒█░░░░░▒█▄▄▀░▒█▀▀▀░▒█▄▄█░▒█░░▒█
▒█░▒█░▒█░▒█░▒█▄▄▀░▒█▄▄▄█░▒█▄▄█░▄█▄░▒█░░▀█░░▀▄▄▀░▄▀▒▀▄░░░▒█░▒█░▒█▄▄▄░▒█░░░░▒█▄▄▄█


EOF

# Define the path to the pacman.conf file
PACMAN_CONF="/etc/pacman.conf"

echo
echo

if ! grep -q "\[arcolinux_repo\]" $PACMAN_CONF; then
	# If the repo is not found, append it to pacman.conf
	echo "Adding arcolinux_repo to $PACMAN_CONF..."
	{
		echo -e "\n[arcolinux_repo]"
		echo "SigLevel = Optional TrustedOnly"
		echo "Include = /etc/pacman.d/arcolinux-mirrorlist"
	} | sudo tee -a $PACMAN_CONF >/dev/null

	echo "arcolinux_repo has been added to $PACMAN_CONF."
else
	echo "The arcolinux_repo is already present in $PACMAN_CONF."
fi

echo
echo

cat <<"EOF"

░█▀▀▄░▒█▀▀▄░▒█▀▀▄░▒█▀▀▀█░▒█░░░░▀█▀░▒█▄░▒█░▒█░▒█░▀▄░▄▀░░░▒█▀▀▄░▒█▀▀▀░▒█▀▀█░▒█▀▀▀█░░░█▀▀█░▄▀▀▄░█▀▀▄░█▀▀▄░▀█▀░█░░█
▒█▄▄█░▒█▄▄▀░▒█░░░░▒█░░▒█░▒█░░░░▒█░░▒█▒█▒█░▒█░▒█░░▒█░░░░░▒█▄▄▀░▒█▀▀▀░▒█▄▄█░▒█░░▒█░░░░▒▀▄░█▄▄█░█▄▄█░█▄▄▀░░█░░█▄▄█
▒█░▒█░▒█░▒█░▒█▄▄▀░▒█▄▄▄█░▒█▄▄█░▄█▄░▒█░░▀█░░▀▄▄▀░▄▀▒▀▄░░░▒█░▒█░▒█▄▄▄░▒█░░░░▒█▄▄▄█░░░█▄▄█░█░░░░▀░░▀░▀░▀▀░░▀░░▄▄▄▀


EOF

echo
echo
if ! grep -q "\[arcolinux_repo_3party\]" $PACMAN_CONF; then
	# If the repo is not found, append it to pacman.conf
	echo "Adding arcolinux_repo_3party to $PACMAN_CONF..."
	{
		echo -e "\n[arcolinux_repo_3party]"
		echo "SigLevel = Optional TrustedOnly"
		echo "Include = /etc/pacman.d/arcolinux-mirrorlist"
	} | sudo tee -a $PACMAN_CONF >/dev/null

	echo "arcolinux_repo_3party has been added to $PACMAN_CONF."
else
	echo "The arcolinux_repo_3party is already present in $PACMAN_CONF."
fi

echo
echo

cat <<"EOF"

░█▀▀▄░▒█▀▀▄░▒█▀▀▄░▒█▀▀▀█░▒█░░░░▀█▀░▒█▄░▒█░▒█░▒█░▀▄░▄▀░░░▒█▀▀▄░▒█▀▀▀░▒█▀▀█░▒█▀▀▀█░░░█░█░█░░█▀▀▄░█▀▀▄░█▀▀▀░█▀▀
▒█▄▄█░▒█▄▄▀░▒█░░░░▒█░░▒█░▒█░░░░▒█░░▒█▒█▒█░▒█░▒█░░▒█░░░░░▒█▄▄▀░▒█▀▀▀░▒█▄▄█░▒█░░▒█░░░▄▀▄░█░░█▄▄█░█▄▄▀░█░▀▄░█▀▀
▒█░▒█░▒█░▒█░▒█▄▄▀░▒█▄▄▄█░▒█▄▄█░▄█▄░▒█░░▀█░░▀▄▄▀░▄▀▒▀▄░░░▒█░▒█░▒█▄▄▄░▒█░░░░▒█▄▄▄█░░░▀░▀░▀▀░▀░░▀░▀░▀▀░▀▀▀▀░▀▀▀


EOF

echo
echo
if ! grep -q "\[arcolinux_repo_xlarge\]" $PACMAN_CONF; then
	# Repository not found, append it to pacman.conf
	echo "Adding arcolinux_repo_xlarge to $PACMAN_CONF..."
	{
		echo -e "\n[arcolinux_repo_xlarge]"
		echo "SigLevel = Optional TrustedOnly"
		echo "Include = /etc/pacman.d/arcolinux-mirrorlist"
	} | sudo tee -a $PACMAN_CONF >/dev/null

	echo "arcolinux_repo_xlarge has been added to $PACMAN_CONF."
else
	echo "The arcolinux_repo_xlarge is already present in $PACMAN_CONF."
fi
