#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Connect VPN
# @raycast.mode fullOutput
# @raycast.packageName Mac Setup

# Optional parameters:
# @raycast.icon 🛜

# Documentation:
# @raycast.author imthath
# @raycast.authorURL https://raycast.com/imthath

set -e
set -o pipefail

# save the ITEM_ID in a file which is git ignored
# you can get the UUIDs of all items by running `op item list`
ITEM_ID=$(< item-id.txt)
user_name="m0m1e7y"
main_password=$(op item get $ITEM_ID --fields label=password)
one_time_password=$(op item get $ITEM_ID --otp)

echo -e "$user_name\n$main_password\n$one_time_password\ny" | /opt/cisco/anyconnect/bin/vpn -s connect "IDC Two Factor VPN"

