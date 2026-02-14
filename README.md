# void-repo

## What This Is

This repository is the central home for the Void Linux packages I maintain. It contains the templates, build automation, and published binary repository branches for the packages I create.

Main repo:

`https://git.deadzone.lol/Wizzard/void-repo`

## Quick Install

### Bash / Zsh

```bash
ARCH="$(xbps-uhelper arch)"; echo "repository=https://git.deadzone.lol/Wizzard/void-repo/media/branch/repository-${ARCH}" | sudo tee /etc/xbps.d/20-void-repo.conf
sudo xbps-install -S
```

### Fish

```fish
echo "repository=https://git.deadzone.lol/Wizzard/void-repo/media/branch/repository-(xbps-uhelper arch)" | sudo tee /etc/xbps.d/20-void-repo.conf
sudo xbps-install -S
```

### GitHub Mirror

```bash
ARCH="$(xbps-uhelper arch)"; echo "repository=https://raw.githubusercontent.com/CODJointOps/void-repo/repository-${ARCH}" | sudo tee /etc/xbps.d/20-void-repo.conf
sudo xbps-install -S
```

```fish
echo "repository=https://raw.githubusercontent.com/CODJointOps/void-repo/repository-(xbps-uhelper arch)" | sudo tee /etc/xbps.d/20-void-repo.conf
sudo xbps-install -S
```

Install whatever you want after that:

```bash
sudo xbps-install zen-browser vesktop bitwarden ente-auth mullvad-vpn
```

On first refresh, accept the repo signing key prompt.

## Packages

| Package | Archs |
|---|---|
| `bitwarden` | `x86_64` |
| `claude-desktop` | `x86_64` |
| `ente-auth` | `x86_64` (`only_for_archs`) |
| `mullvad-vpn` | `x86_64`, `aarch64` |
| `vesktop` | `x86_64`, `aarch64` |
| `zen-browser` | `x86_64`, `aarch64` |
