# Setting up a new mac

### Customization apps and tools to install before setup
1. Open Brewfile
2. Comment out unwanted apps/tools

### Actual setup
Run the following commands
```
chmod +x setup-script.sh
./setup-script.sh
```
This does majority of the time consuming stuff.

### Post Script manual steps
- Adjust mouse settings
    - Set pointer speed to max
    - Set secondary click to right side
- Raycast Hotkey setup
    - Set `⌥ space` as shortcut for Spotlight from System Settings -> Keyboard -> Keyboard Shortcuts... -> Spotlight
    - Set `⌘ space` as the hotkey for Raycast
- Setup in System Settings
    - TouchID
    - Apple ID
- Login to the following apps
    - 1Password
        - Enable TouchID in Settings
    - Raycast
    - OneDrive
    - Arc
    - gh (in terminal)
        - Use full hostname like "github.comapny.com" to log into enterprise server
    - Slack
- Get 1Password browser Safari extension (if required)
- Update Wallpater (if new ones are bothering)
- Setup shortcuts in screenshot tool (Shottr or Cleanshot X, which might support sync)

### Dev Setup
- Prefer shallow clone for monorepos with `git clone --depth=10 <url>`
- Sublime Merge
    - Prevent automatic fetching by entering a huge delay in "Settings -> General -> Automatic fetching" like 100000000
    - Enter license from 1Password for dark mode

### WM Steps
- Self Service app -> Getting Started
    - Connect VPN
    - Intune Registration


### Notes on 20-May-24
- Can login to multiple accounts on github CLI.
- The most pain was caused by Safari.
    - Not able to install extensions easily. Had to restart mac for app store to work.
    - Installed extensions didn't work without restarting safari.