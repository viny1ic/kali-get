#!/bin/bash

echo 'deb https://http.kali.org/kali kali-rolling main non-free contrib' > /etc/apt/sources.list.d/kali.list
sudo apt install gnupg
wget 'https://archive.kali.org/archive-key.asc'
sudo apt-key add archive-key.asc
rm archive-key.asc
touch /etc/apt/preferences.d/kali.pref
sudo chmod 666 /etc/apt/preferences.d/kali.pref 
echo 'Package: *'>/etc/apt/preferences.d/kali.pref
echo 'Pin: release a=kali-rolling'>>/etc/apt/preferences.d/kali.pref
echo 'Pin-Priority: 50'>>/etc/apt/preferences.d/kali.pref
sudo chmod 644 /etc/apt/preferences.d/kali.pref