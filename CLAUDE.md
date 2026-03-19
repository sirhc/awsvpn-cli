# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

`awsvpn-cli` is a zsh script that controls the AWS VPN Client on macOS via AppleScript (UI automation). It reads VPN profiles from `~/.config/AWSVPNClient/ConnectionProfiles` (JSON) and automates the AWS VPN Client GUI.

## Files

- `awsvpn-cli` — main zsh script; all logic lives here
- `completion.zsh` — zsh completion (`#compdef awsvpn-cli`); install to a `$fpath` directory

## Installation

```zsh
# Script
cp awsvpn-cli /usr/local/bin/

# Completion (example path)
cp completion.zsh /usr/local/share/zsh/site-functions/_awsvpn-cli
```

## Key Implementation Details

- Uses `osascript` for all GUI interaction with the AWS VPN Client app
- Profile list is derived from `ConnectionProfiles` JSON via `jq`; entries without a valid `OvpnConfigFilePath` on disk are filtered out (used as visual separators)
- `disconnect` blocks until the "Ready to connect." static text appears in the UI
- `connect` selects the profile from a pop-up menu before clicking Connect
- `assert_valid_profile` uses `grep` against `get_profiles` output — profile names must not contain regex metacharacters to match reliably
- `-v`/`--verbose` works by redefining the `verbose()` function at runtime
