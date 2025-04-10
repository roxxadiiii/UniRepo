#!/bin/bash

# ASCII art header
header=$(cat << EOF
	██╗   ██╗███╗   ██╗██╗██████╗ ███████╗██████╗  ██████╗ 
	██║   ██║████╗  ██║██║██╔══██╗██╔════╝██╔══██╗██╔═══██╗
	██║   ██║██╔██╗ ██║██║██████╔╝█████╗  ██████╔╝██║   ██║
	██║   ██║██║╚██╗██║██║██╔══██╗██╔══╝  ██╔═══╝ ██║   ██║
	╚██████╔╝██║ ╚████║██║██║  ██║███████╗██║     ╚██████╔╝
	 ╚═════╝ ╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝╚══════╝╚═╝      ╚═════╝ 
>>>>>>>>>>>>>>>>> Github: https://github.com/roxxadiiii <<<<<<<<<<<<<<<<<<<<
EOF
)

whiptail --title "UniRepo: Unified repo for ArchBased Distros" --msgbox "$header" 20 80

