#!/usr/bin/env bash
set -oue pipefail

git clone https://github.com/atar-axis/xpadneo.git
cd xpadneo
sudo bash install.sh
