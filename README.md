# void-repo

## What This Is

This repo holds the Void package templates I maintain, the build workflow, and
the published binary repo branches.

Main repo:

`https://git.deadzone.lol/Wizzard/void-repo`

## Quick Install

### Bash / Zsh

```bash
ARCH="$(xbps-uhelper arch)"
printf 'repository=%s\n' "https://git.deadzone.lol/Wizzard/void-repo/media/branch/repository-${ARCH}" | doas tee /etc/xbps.d/00-00-void-repo.conf
doas xbps-install -S
```

### Fish

```fish
set -l arch (xbps-uhelper arch)
printf 'repository=%s\n' "https://git.deadzone.lol/Wizzard/void-repo/media/branch/repository-$arch" | doas tee /etc/xbps.d/00-00-void-repo.conf
doas xbps-install -S
```

### GitHub Mirror

#### Bash / Zsh

```bash
ARCH="$(xbps-uhelper arch)"
printf 'repository=%s\n' "https://github.com/CODJointOps/void-repo/raw/refs/heads/repository-${ARCH}" | doas tee /etc/xbps.d/00-00-void-repo.conf
doas xbps-install -S
```

#### Fish

```fish
set -l arch (xbps-uhelper arch)
printf 'repository=%s\n' "https://github.com/CODJointOps/void-repo/raw/refs/heads/repository-$arch" | doas tee /etc/xbps.d/00-00-void-repo.conf
doas xbps-install -S
```

Keep this repo before the official Void repos. XBPS otherwise may pick older
official builds for packages that exist in both places.

Install whatever you want after that:

```bash
doas xbps-install zen-browser vesktop bitwarden ente-auth mullvad-vpn
```

On first refresh, accept the repo signing key prompt.

## Packages

| Package | Archs |
|---|---|
| `aquamarine` | `all` |
| `bitwarden` | `x86_64` |
| `claude-desktop` | `x86_64` |
| `ente-auth` | `x86_64` (`only_for_archs`) |
| `glaze` | `all` |
| `hyprcursor` | `all` |
| `hyprgraphics` | `all` |
| `hyprland` | `all` |
| `hyprland-devel` | `all` |
| `hyprland-guiutils` | `all` |
| `hyprland-protocols` | `all` |
| `hyprland-qt-support` | `all` |
| `hyprlang` | `all` |
| `hyprlock` | `all` |
| `hyprpaper` | `all` |
| `hyprpicker` | `all` |
| `hyprtoolkit` | `all` |
| `hyprutils` | `all` |
| `hyprwayland-scanner` | `all` |
| `hyprwire` | `all` |
| `libspng` | `all` |
| `mullvad-browser` | `x86_64` |
| `mullvad-vpn` | `x86_64` |
| `sdbus-cpp` | `all` |
| `vesktop` | `x86_64` |
| `zen-browser` | `x86_64`, `aarch64` |
| `librewolf` | `x86_64`, `aarch64` |
| `zerotier-one` | `x86_64`, `aarch64` (`+musl`) |
