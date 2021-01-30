#!/bin/bash
echo "[i] Adding kali repository to apt sources"
sudo touch /etc/apt/sources.list.d/kali.list
sudo chmod 666 /etc/apt/sources.list.d/kali.list
sudo echo 'deb https://http.kali.org/kali kali-rolling main non-free contrib' > /etc/apt/sources.list.d/kali.list
sudo chmod 644 /etc/apt/sources.list.d/kali.list
sudo apt install gnupg
wget 'https://archive.kali.org/archive-key.asc'
sudo apt-key add archive-key.asc
rm archive-key.asc
echo "[i] setting low priority for kali repository"
sudo touch /etc/apt/preferences.d/kali.pref
sudo chmod 666 /etc/apt/preferences.d/kali.pref 
echo 'Package: *'>/etc/apt/preferences.d/kali.pref
echo 'Pin: release a=kali-rolling'>>/etc/apt/preferences.d/kali.pref
echo 'Pin-Priority: 50'>>/etc/apt/preferences.d/kali.pref
sudo chmod 644 /etc/apt/preferences.d/kali.pref
echo "[i] Install completed. Use kali-list.sh to install kali packages"