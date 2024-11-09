#!/usr/bin/env bash
set -oue pipefail

echo "Current path: $(pwd)"

echo "Attempting to download McMojave-circle icons..."
echo "To be honest i am not entirely sure if this will work but here we go."

curl -L -o mcmojave_icons.zip https://github.com/vinceliuice/McMojave-circle/archive/refs/tags/2024-04-11.zip

echo "Unzipping mcmojave_icons.zip"
unzip -qq mcmojave_icons.zip


echo "Copying mcmojave_icons/src to files/system/usr/share/icons/McMojave"
mkdir -p files/system/usr/share/icons/McMojave
cp -r McMojave-circle-2024-04-11/src files/system/usr/share/icons/McMojave/
# I think we also need to copy that COPYING file which is the gpl-3.0 license. I really don't know what i am doing... But yeah we copy it over... just in case.
cp McMojave-circle-2024-04-11/COPYING files/system/usr/share/icons/McMojave/COPYING
# And also the authors.
cp McMojave-circle-2024-04-11/AUTHORS files/system/usr/share/icons/McMojave/AUTHORS

# Finally clean up and remove McMojave-circle-2024-04-11 and it's zip.
rm -r ./McMojave-circle-2024-04-11
rm mcmojave_icons.zip