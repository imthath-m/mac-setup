#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Connect VPN
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 📶
# @raycast.packageName Mac Setup

# Documentation:
# @raycast.author imthath
# @raycast.authorURL https://raycast.com/imthath

log "Starting 1Password"

tell application "1Password" to activate
delay 0.5
tell application "System Events"
	keystroke "f" using command down
	set the clipboard to "=favorite sso"
	delay 0.5
	keystroke "a" using command down
	delay 0.5
	keystroke "v" using command down
	delay 0.5
	keystroke return
	delay 0.2
	repeat 8 times
		keystroke tab
		delay 0.2
	end repeat
	keystroke space
end tell
delay 0.5
set mainPassword to the clipboard
tell application "System Events"
	repeat 2 times
		keystroke tab
		delay 0.2
	end repeat
	keystroke space
end tell
delay 0.5
set oneTimePassword to the clipboard

log "Copied Passwords"

tell application "Cisco AnyConnect Secure Mobility Client" to activate
delay 2
tell application "System Events"
	keystroke return
end tell
delay 5
set the clipboard to mainPassword
tell application "System Events"
	keystroke "v" using command down
	key code 124
	keystroke tab
end tell
delay 0.5
set the clipboard to oneTimePassword
tell application "System Events"
	keystroke "v" using command down
	key code 124
	keystroke return
end tell
delay 5
tell application "System Events" to keystroke return

log "Connected VPN"