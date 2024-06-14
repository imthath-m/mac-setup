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

# set the ITEM_ID property in environment variable using the following command
# export ITEM_ID="<uuid of item from 1Password>"
# you can get the UUIDs of all items by running `op item list`
user_name="m0m1e7y"
main_password=$(op item get $ITEM_ID --fields label=password)
one_time_password=$(op item get $ITEM_ID --otp)

echo -e "$user_name\n$main_password\n$one_time_password\ny" | /opt/cisco/anyconnect/bin/vpn -s connect "IDC Two Factor VPN"

