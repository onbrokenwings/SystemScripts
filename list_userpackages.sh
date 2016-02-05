#!/bin/ash
echo "User-installed packages are the following:"
packages="$(cat /usr/lib/opkg/status | grep -n 'user install' | cut -d ':' -f1)"'
'
printf %s "$packages" | while IFS= read -r nline; do
  sed -n 1,$nline' s/Package/&/p' /usr/lib/opkg/status | tail -n 1
done