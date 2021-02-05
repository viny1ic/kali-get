#!/bin/bash
echo "[i] Please use me only if package is not available in ubuntu repositories."
echo "[i] To update the package manager, please run: git pull"
echo "[i] Check this using apt-cache search PackageName"
echo Enter apt command:
read input
$input -t kali-rolling 