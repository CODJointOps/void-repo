# void-repo

## What This Is

This repository is the central home for the Void Linux packages I maintain. It contains the templates, build automation, and published binary repository branches for the packages I create.

Main repo:

`https://git.deadzone.lol/Wizzard/void-repo`

## Quick Install

### Bash / Zsh

```bash
sudo rm -f /etc/xbps.d/20-void-repo.conf
ARCH="$(xbps-uhelper arch)"; echo "repository=https://git.deadzone.lol/Wizzard/void-repo/media/branch/repository-${ARCH}" | sudo tee /etc/xbps.d/00-00-void-repo.conf
sudo xbps-install -S
```

### Fish

```fish
sudo rm -f /etc/xbps.d/20-void-repo.conf
echo "repository=https://git.deadzone.lol/Wizzard/void-repo/media/branch/repository-(xbps-uhelper arch)" | sudo tee /etc/xbps.d/00-00-void-repo.conf
sudo xbps-install -S
```

### GitHub Mirror

#### Bash / Zsh

```bash
sudo rm -f /etc/xbps.d/20-void-repo.conf
ARCH="$(xbps-uhelper arch)"; echo "repository=https://raw.githubusercontent.com/CODJointOps/void-repo/repository-${ARCH}" | sudo tee /etc/xbps.d/00-00-void-repo.conf
sudo xbps-install -S
```

#### Fish

```fish
sudo rm -f /etc/xbps.d/20-void-repo.conf
echo "repository=https://raw.githubusercontent.com/CODJointOps/void-repo/repository-(xbps-uhelper arch)" | sudo tee /etc/xbps.d/00-00-void-repo.conf
sudo xbps-install -S
```

The `00-00-void-repo.conf` name is intentional. XBPS picks the first matching
package unless `bestmatching=true` is enabled, so this repository must be loaded
before the official Void repos for packages that also exist upstream.

Install whatever you want after that:

```bash
sudo xbps-install zen-browser vesktop bitwarden ente-auth mullvad-vpn
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
