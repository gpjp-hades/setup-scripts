#!/bin/bash
sudo apt-get update
sudo apt-get install git dkms build-essential -y
git clone -b 4.10-down https://github.com/jeremyb31/rtl8723de.git
sudo dkms add ./rtl8723de
sudo dkms install rtl8723de/5.1.1.8_21285.20171026_COEX20170111-1414
rm -rf ./rtl8723de
sudo reboot
