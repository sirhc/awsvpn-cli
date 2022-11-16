# awsvpn-cli

Control the AWS VPN Client on macOS using AppleScript.

## Usage

```
usage: awsvpn-cli [<options>] (-c | -C) <profile>
   or: awsvpn-cli [<options>] -d
   or: awsvpn-cli [<options>] -p
   or: awsvpn-cli [<options>] -r
   or: awsvpn-cli [<options>] -s

Generic options
    -v, --verbose         print the actions being taken

Specific awsvpn-cli actions:
    -c, --connect=<profile>
                          connect to a profile, if not connected
    -C, --force-connect=<profile>
                          connect to a profile, disconnecting if necessary
    -d, --disconnect      disconnect from a profile
    -p, --profiles        display the configured profiles
    -r, --running         exit 0 if running, 1 otherwise
    -s, --show            show the currently connected profile
```
