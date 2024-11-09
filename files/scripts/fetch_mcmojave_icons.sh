#!/usr/bin/env bash
set -oue pipefail

echo "Downloading McMojave-circle icons..."

curl -L -o mcmojave_icons.zip https://github.com/vinceliuice/McMojave-circle/archive/refs/tags/2024-04-11.zip

echo "Unzipping mcmojave_icons.zip"
unzip -qq mcmojave_icons.zip


echo "Copying mcmojave_icons/src to usr/share/icons/McMojave-circle"
cp -r McMojave-circle-2024-04-11/src /usr/share/icons/McMojave-circle
# I think we also need to copy that COPYING file which is the gpl-3.0 license. I really don't know what i am doing... But yeah we copy it over... just in case.
cp McMojave-circle-2024-04-11/COPYING /usr/share/icons/McMojave-circle/COPYING
# And also the authors.
cp McMojave-circle-2024-04-11/AUTHORS /usr/share/icons/McMojave-circle/AUTHORS

echo "Installed McMojave circle to /usr/share/icons/McMojave-circle! Cleaning up..."
rm -r ./McMojave-circle-2024-04-11
rm mcmojave_icons.zip
echo "Installation successful!"