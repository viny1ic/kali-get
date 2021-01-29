# kali-get
## package manager to install kali packages in ubuntu
## 1. installation
```
bash install.sh
```
## 2. Usage
### 2.1 Invoke the script using
```
bash kali-get.sh
```
### 2.2 enter the apt command you would normally use. <br>
Example:
```
sudo apt install PackageName
```
**Make sure to use kali-get.sh only when the package is avaible in ubuntu repositories** 
Check using
```
apt-cache search PackageName
```
note:
**do not run apt upgrade using this script. upgrade your kali packges separately**
