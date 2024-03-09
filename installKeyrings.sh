!/bin/bash


#installing keyrings of eos

echo " >>>>>>>>     INSTALLING KEYRINGS OF EOS"

sudo pacman -U endeavouros-keyring-20231222-1-any.pkg.tar.zst

echo
echo ">>>>>>>>> EOS's KEYRINGS INSTALLED"

echo
echo

echo ">>>>>>>>> INSTALLING MIRRORLIST OF EOS"

sudo pacman -U endeavouros-mirrorlist-24.2-1-any.pkg.tar.zst
echo
echo ">>>>>>>> EOS's MIRRORLIST INSTALLED"

echo
echo

echo ">>>>>>>>> INSTALLING KEYRINGS OF REBORNOS"

sudo pacman -U rebornos-keyring-20231128-1-any.pkg.tar.zst

echo
echo ">>>>>>>>> REBORNOS's KEYRINGS INSTALLED"

echo
echo


echo ">>>>>>>>> INSTALLING MIRRORLIST OF REBORNOS"

sudo pacman -U rebornos-mirrorlist-20240215-1-any.pkg.tar.zst

echo
echo ">>>>>>>>> REBORNOS'S MIRRORLIST INSTALLED"
echo
echo

echo ">>>>>>>>> INSTALLING KEYRINGS OF CHAOTIC"

sudo pacman -U chaotic-keyring-20230616-1-any.pkg.tar.zst

echo
echo ">>>>>>>>> CHAOTIC's KEYRINGS INSTALLED"
echo
echo

echo ">>>>>>>>> INSTALLING MIRRORLIST OF CHAOTIC"

sudo pacman -U chaotic-mirrorlist-20240130-1-any.pkg.tar.zst
echo
echo ">>>>>>>>> CHAOTIC's MIRRORLIST INSTALLED"
echo
echo

